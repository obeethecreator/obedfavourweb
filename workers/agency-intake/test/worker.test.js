// Runs the Worker's fetch handler with all outbound calls mocked (node --test).
import { test } from 'node:test';
import assert from 'node:assert/strict';
import worker from '../src/index.js';

const env = {
  NOTION_TOKEN: 'test-notion',
  TELEGRAM_BOT_TOKEN: 'test-bot',
  NOTION_DATA_SOURCE_ID: '763d801b-7ddd-4012-9a77-d2977b97ff32',
  TELEGRAM_CHAT_ID: '5880253792',
  FORMSPREE_URL: 'https://formspree.io/f/mjglnqqv',
  THANKS_URL: 'https://www.obedfavour.com/agencies/thanks/',
  ALLOWED_ORIGINS: 'https://www.obedfavour.com,https://obedfavour.com',
};

const SITE_HTML = '<html><head><title>Brightside | Creative agency in Leeds</title></head><body><h1>We make brands</h1></body></html>';

function mockFetch({ notionStatus = 200, site = SITE_HTML } = {}) {
  const calls = [];
  globalThis.fetch = async (input, init = {}) => {
    const url = typeof input === 'string' ? input : input.url;
    calls.push({ url, init });
    if (url.startsWith('https://api.notion.com/')) {
      return notionStatus === 200
        ? Response.json({ id: 'page-1', url: 'https://www.notion.so/page-1' })
        : Response.json({ code: 'object_not_found', message: 'no access' }, { status: notionStatus });
    }
    if (url.startsWith('https://formspree.io/')) return Response.json({ ok: true });
    if (url.startsWith('https://api.telegram.org/')) return Response.json({ ok: true });
    return new Response(site, { headers: { 'Content-Type': 'text/html' } });
  };
  return calls;
}

function post(fields, origin = 'https://www.obedfavour.com') {
  const body = new URLSearchParams(fields);
  return new Request('https://agency-intake.example/', {
    method: 'POST',
    body,
    headers: { 'Content-Type': 'application/x-www-form-urlencoded', ...(origin ? { Origin: origin } : {}) },
  });
}

const good = {
  name: 'Jane Doe', email: 'jane@brightside.co.uk', agency: 'Brightside', website: 'brightside.co.uk',
  team_size: '16-30', region: 'UK', interest: 'Client reporting', timing: 'Next 30 days',
  message: 'Monthly reports take 2 days', company_url: '',
};

test('full submission: Notion row, Formspree backup, Telegram ping, redirect to thanks', async () => {
  const calls = mockFetch();
  const res = await worker.fetch(post(good), env);
  assert.equal(res.status, 303);
  assert.equal(res.headers.get('Location'), env.THANKS_URL);

  const notion = calls.find((c) => c.url.startsWith('https://api.notion.com/'));
  const body = JSON.parse(notion.init.body);
  assert.deepEqual(body.parent, { type: 'data_source_id', data_source_id: env.NOTION_DATA_SOURCE_ID });
  const p = body.properties;
  assert.equal(p.Agency.title[0].text.content, 'Brightside');
  assert.equal(p.Owner.rich_text[0].text.content, 'Jane Doe');
  assert.equal(p.Email.email, 'jane@brightside.co.uk');
  assert.equal(p.Website.url, 'https://brightside.co.uk/');
  assert.equal(p.Source.select.name, 'Website');
  assert.equal(p.Stage.select.name, 'New');
  assert.equal(p['Team size'].number, 23);
  assert.equal(p.Region.select.name, 'UK');
  assert.equal(p['Interested in'].select.name, 'Delivery Automation Sprint');
  assert.equal(p['Marketing agency'].checkbox, true);
  const notes = p['Research notes'].rich_text.map((r) => r.text.content).join('');
  assert.match(notes, /Monthly reports take 2 days/);
  assert.match(notes, /Timing: Next 30 days/);
  assert.match(notes, /Submitted: \d{4}-\d\d-\d\d \d\d:\d\d UTC/);
  assert.match(notes, /Creative agency/);
  assert.equal(notion.init.headers.Authorization, 'Bearer test-notion');

  const fs = calls.find((c) => c.url.startsWith('https://formspree.io/'));
  assert.equal(fs.init.body.get('agency'), 'Brightside');
  assert.equal(fs.init.body.get('company_url'), null);

  const tg = JSON.parse(calls.find((c) => c.url.startsWith('https://api.telegram.org/')).init.body);
  assert.equal(tg.chat_id, '5880253792');
  for (const s of ['Brightside', 'Jane Doe', '16-30', 'Client reporting', 'Next 30 days', 'https://www.notion.so/page-1']) assert.ok(tg.text.includes(s), s);
});

test('team size and interest mappings; "Not sure yet" leaves Interested in empty', async () => {
  for (const [size, n] of [['1-4', 3], ['5-15', 10], ['16-30', 23], ['31+', 40]]) {
    const calls = mockFetch();
    await worker.fetch(post({ ...good, team_size: size, interest: 'Not sure yet' }), env);
    const p = JSON.parse(calls.find((c) => c.url.includes('notion')).init.body).properties;
    assert.equal(p['Team size'].number, n);
    assert.equal(p['Interested in'], undefined);
  }
  const calls = mockFetch();
  await worker.fetch(post({ ...good, interest: 'Owner Pipeline System' }), env);
  assert.equal(JSON.parse(calls.find((c) => c.url.includes('notion')).init.body).properties['Interested in'].select.name, 'Owner Pipeline System');
});

test('website without clear agency wording leaves Marketing agency unticked', async () => {
  const calls = mockFetch({ site: '<title>Brightside Ltd</title><h1>Welcome</h1>' });
  await worker.fetch(post(good), env);
  const p = JSON.parse(calls.find((c) => c.url.includes('notion')).init.body).properties;
  assert.equal(p['Marketing agency'], undefined);
  assert.match(p['Research notes'].rich_text[0].text.content, /left for Obee/);
});

test('honeypot filled: redirect to thanks, nothing sent anywhere', async () => {
  const calls = mockFetch();
  const res = await worker.fetch(post({ ...good, company_url: 'http://spam.example' }), env);
  assert.equal(res.status, 303);
  assert.equal(calls.length, 0);
});

test('missing name, email or agency is rejected with 400 and nothing sent', async () => {
  for (const k of ['name', 'email', 'agency']) {
    const calls = mockFetch();
    const res = await worker.fetch(post({ ...good, [k]: '' }), env);
    assert.equal(res.status, 400, k);
    assert.equal(calls.length, 0, k);
  }
  const calls = mockFetch();
  assert.equal((await worker.fetch(post({ ...good, email: 'not-an-email' }), env)).status, 400);
  assert.equal(calls.length, 0);
});

test('foreign Origin is rejected', async () => {
  const calls = mockFetch();
  assert.equal((await worker.fetch(post(good, 'https://evil.example'), env)).status, 403);
  assert.equal(calls.length, 0);
});

test('Notion failure: still redirects (Formspree has it) and Telegram carries the warning', async () => {
  const calls = mockFetch({ notionStatus: 404 });
  const res = await worker.fetch(post(good), env);
  assert.equal(res.status, 303);
  const tg = JSON.parse(calls.find((c) => c.url.startsWith('https://api.telegram.org/')).init.body);
  assert.match(tg.text, /Notion row NOT created: HTTP 404 object_not_found/);
});

test('deep health: needs the key, reads the schema, never creates a row', async () => {
  const calls = [];
  globalThis.fetch = async (input) => {
    const url = typeof input === 'string' ? input : input.url;
    calls.push(url);
    if (url.includes('/v1/data_sources/')) return Response.json({ title: [{ plain_text: 'Agency Pipeline' }], properties: Object.fromEntries(['Agency', 'Owner', 'Email', 'Website', 'Source', 'Stage', 'Team size', 'Interested in', 'Region', 'Research notes', 'Marketing agency'].map((k) => [k, {}])) });
    if (url.includes('/getMe')) return Response.json({ ok: true, result: { username: 'obeeleads_bot' } });
    return Response.json({ ok: true });
  };
  const e = { ...env, HEALTH_KEY: 'k' };
  assert.equal(await (await worker.fetch(new Request('https://x/health?key=wrong'), e)).text(), 'ok');
  assert.equal(calls.length, 0);
  const r = await worker.fetch(new Request('https://x/health?key=k&ping=1'), e);
  const j = await r.json();
  assert.equal(r.status, 200);
  assert.deepEqual(j.notion.missing, []);
  assert.equal(j.telegram.bot, '@obeeleads_bot');
  assert.equal(j.telegram.pinged, true);
  assert.ok(!calls.some((u) => u.endsWith('/v1/pages')));
});

test('GET /health and other paths', async () => {
  mockFetch();
  assert.equal((await worker.fetch(new Request('https://x/health'), env)).status, 200);
  assert.equal((await worker.fetch(new Request('https://x/'), env)).status, 404);
});
