// agency-intake: receives the intro-call form on obedfavour.com/agencies/#call and
//   1. creates a row in the Notion Agency Pipeline (Source = Website, Stage = New)
//   2. pings Obee on Telegram with a link to the row
//   3. forwards the submission to Formspree as an email backup
//   4. redirects the visitor to the thank-you page
// Secrets (wrangler secret put): NOTION_TOKEN, TELEGRAM_BOT_TOKEN. Everything else is in wrangler.toml [vars].

const NOTION_VERSION = '2025-09-03';

const TEAM_SIZE = { '1-4': 3, '5-15': 10, '16-30': 23, '31+': 40 };

// Form value -> Agency Pipeline "Interested in" option. "Not sure yet" (and anything unknown) stays empty.
const INTEREST = {
  'Owner Pipeline System': 'Owner Pipeline System',
  'Client reporting': 'Delivery Automation Sprint',
  'Content production': 'Delivery Automation Sprint',
  'Review management': 'Delivery Automation Sprint',
};

const REGIONS = ['UK', 'Ireland', 'EU', 'US', 'Canada', 'Australia', 'Other'];

// Only a phrase like "creative agency" in the site's title, description or headings counts as "clearly" an agency.
const AGENCY_RE = /\b(marketing|digital marketing|creative|content|social media|seo|ppc|paid media|advertising|branding|brand|design|growth|performance marketing|inbound|pr|communications)\s+(agency|studio)\b/i;

const MAX_FIELD = 2000;

export default {
  async fetch(request, env, ctx) {
    const url = new URL(request.url);
    if (request.method === 'GET' && url.pathname === '/health') {
      if (env.HEALTH_KEY && url.searchParams.get('key') === env.HEALTH_KEY) return deepHealth(env, url.searchParams.get('ping') === '1');
      return new Response('ok');
    }
    if (request.method !== 'POST' || url.pathname !== '/') return new Response('Not found', { status: 404 });

    const origin = request.headers.get('Origin');
    if (origin && !env.ALLOWED_ORIGINS.split(',').includes(origin)) return new Response('Forbidden', { status: 403 });

    let form;
    try {
      form = await request.formData();
    } catch {
      return new Response('Bad request', { status: 400 });
    }
    const f = (k) => (form.get(k) || '').toString().trim().slice(0, MAX_FIELD);

    // Honeypot: real visitors never see or fill "company_url". Pretend success so bots learn nothing.
    if (f('company_url')) return redirect(env.THANKS_URL);

    const lead = {
      name: f('name'),
      email: f('email'),
      agency: f('agency'),
      website: normaliseUrl(f('website')),
      teamSize: f('team_size'),
      region: f('region'),
      interest: f('interest'),
      timing: f('timing'),
      message: f('message'),
      submitted: new Date().toISOString(),
    };
    if (!lead.name || !lead.agency || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(lead.email)) {
      return new Response('Please go back and fill in your name, work email and agency name.', { status: 400 });
    }

    const agencyCheck = lead.website ? await checkAgencySite(lead.website) : { isAgency: false, note: 'No website given.' };

    const results = await Promise.allSettled([createNotionRow(env, lead, agencyCheck), forwardToFormspree(env, form)]);
    const notion = results[0].status === 'fulfilled' ? results[0].value : null;
    const errors = [];
    if (!notion) errors.push(`Notion row NOT created: ${results[0].reason?.message || results[0].reason}`);
    if (results[1].status === 'rejected') errors.push(`Formspree backup failed: ${results[1].reason?.message || results[1].reason}`);

    // Telegram last so it can link the row and report any failure above.
    try {
      await sendTelegram(env, telegramText(lead, notion, errors));
    } catch (e) {
      errors.push(`Telegram failed: ${e?.message || e}`);
    }
    if (errors.length) console.error(JSON.stringify({ agency: lead.agency, errors }));

    // The visitor sees the thank-you page as long as at least one channel captured the lead.
    const captured = notion || results[1].status === 'fulfilled';
    if (!captured) {
      return new Response('Sorry, that did not go through. Please email hello@obedfavour.com instead.', { status: 502 });
    }
    return redirect(env.THANKS_URL);
  },
};

// Read-only check that the secrets work: reads the Agency Pipeline schema (no row is created) and,
// with ping=1, sends a test Telegram message. Returns names and statuses only, never secret values.
const REQUIRED_PROPS = ['Agency', 'Owner', 'Email', 'Website', 'Source', 'Stage', 'Team size', 'Interested in', 'Region', 'Research notes', 'Marketing agency'];

async function deepHealth(env, ping) {
  const out = {};
  try {
    const res = await fetch(`https://api.notion.com/v1/data_sources/${env.NOTION_DATA_SOURCE_ID}`, {
      headers: { Authorization: `Bearer ${env.NOTION_TOKEN}`, 'Notion-Version': NOTION_VERSION },
    });
    const body = await res.json().catch(() => ({}));
    if (!res.ok) throw new Error(`HTTP ${res.status} ${body.code || ''}`);
    const props = Object.keys(body.properties || {});
    out.notion = { ok: true, title: body.title?.map((t) => t.plain_text).join('') || '', properties: props.length, missing: REQUIRED_PROPS.filter((p) => !props.includes(p)) };
  } catch (e) {
    out.notion = { ok: false, error: e.message };
  }
  try {
    const res = await fetch(`https://api.telegram.org/bot${env.TELEGRAM_BOT_TOKEN}/getMe`);
    const body = await res.json();
    out.telegram = { ok: body.ok, bot: body.result ? `@${body.result.username}` : null };
    if (ping) {
      await sendTelegram(env, '✅ Test from the agency-intake Worker: this bot is connected. Website intro-call requests will arrive here.');
      out.telegram.pinged = true;
    }
  } catch (e) {
    out.telegram = { ...out.telegram, ok: false, error: e.message };
  }
  return Response.json(out, { status: out.notion.ok && out.telegram.ok ? 200 : 500 });
}

function redirect(to) {
  return Response.redirect(to, 303);
}

function normaliseUrl(v) {
  if (!v) return '';
  const withScheme = /^https?:\/\//i.test(v) ? v : `https://${v}`;
  try {
    const u = new URL(withScheme);
    return u.hostname.includes('.') ? u.toString() : '';
  } catch {
    return '';
  }
}

// Fetch the agency's homepage (5s, first 200 KB) and look for an agency phrase in title, meta description and h1/h2.
export async function checkAgencySite(site) {
  try {
    const res = await fetch(site, {
      redirect: 'follow',
      signal: AbortSignal.timeout(5000),
      headers: { 'User-Agent': 'Mozilla/5.0 (compatible; obedfavour-intake/1.0)' },
    });
    if (!res.ok) return { isAgency: false, note: `Website check: HTTP ${res.status}, not checked.` };
    const html = (await readCapped(res, 200_000)).replace(/\s+/g, ' ');
    const pick = (re) => [...html.matchAll(re)].map((m) => stripTags(m[1])).filter(Boolean);
    const texts = [
      ...pick(/<title[^>]*>(.*?)<\/title>/gi),
      ...pick(/<meta[^>]+(?:name|property)=["'](?:description|og:description|og:title)["'][^>]*content=["']([^"']*)["']/gi),
      ...pick(/<meta[^>]+content=["']([^"']*)["'][^>]*(?:name|property)=["'](?:description|og:description|og:title)["']/gi),
      ...pick(/<h[12][^>]*>(.*?)<\/h[12]>/gi),
    ];
    for (const t of texts) {
      const m = t.match(AGENCY_RE);
      if (m) return { isAgency: true, note: `Website check: ticked Marketing agency, site says "${m[0]}" ("${t.slice(0, 120)}").` };
    }
    return { isAgency: false, note: 'Website check: no clear agency wording in title, description or headings. Marketing agency left for Obee.' };
  } catch (e) {
    return { isAgency: false, note: `Website check failed (${e.name || e}). Marketing agency left for Obee.` };
  }
}

async function readCapped(res, max) {
  const reader = res.body.getReader();
  const dec = new TextDecoder();
  let out = '';
  while (out.length < max) {
    const { done, value } = await reader.read();
    if (done) break;
    out += dec.decode(value, { stream: true });
  }
  reader.cancel().catch(() => {});
  return out;
}

function stripTags(s) {
  return s
    .replace(/<[^>]*>/g, ' ')
    .replace(/&amp;/g, '&')
    .replace(/&#39;|&apos;/g, "'")
    .replace(/&quot;/g, '"')
    .replace(/\s+/g, ' ')
    .trim();
}

export function buildNotionProperties(lead, agencyCheck) {
  const notes = [
    `Message: ${lead.message || '(none)'}`,
    `Timing: ${lead.timing || '(not given)'}`,
    `Interest on form: ${lead.interest || '(not given)'}`,
    `Region on form: ${lead.region || '(not given)'}`,
    `Submitted: ${lead.submitted.slice(0, 16).replace('T', ' ')} UTC via obedfavour.com/agencies/`,
    agencyCheck.note,
  ].join('\n');

  const props = {
    Agency: { title: [{ text: { content: lead.agency } }] },
    Owner: { rich_text: [{ text: { content: lead.name } }] },
    Email: { email: lead.email },
    Source: { select: { name: 'Website' } },
    Stage: { select: { name: 'New' } },
    'Research notes': { rich_text: chunk(notes) },
  };
  if (lead.website) props.Website = { url: lead.website };
  if (TEAM_SIZE[lead.teamSize] !== undefined) props['Team size'] = { number: TEAM_SIZE[lead.teamSize] };
  if (INTEREST[lead.interest]) props['Interested in'] = { select: { name: INTEREST[lead.interest] } };
  if (REGIONS.includes(lead.region)) props.Region = { select: { name: lead.region } };
  if (agencyCheck.isAgency) props['Marketing agency'] = { checkbox: true };
  return props;
}

// Notion rich text items are capped at 2000 characters each.
function chunk(s) {
  const out = [];
  for (let i = 0; i < s.length && out.length < 10; i += 2000) out.push({ text: { content: s.slice(i, i + 2000) } });
  return out;
}

async function createNotionRow(env, lead, agencyCheck) {
  const res = await fetch('https://api.notion.com/v1/pages', {
    method: 'POST',
    headers: {
      Authorization: `Bearer ${env.NOTION_TOKEN}`,
      'Notion-Version': NOTION_VERSION,
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      parent: { type: 'data_source_id', data_source_id: env.NOTION_DATA_SOURCE_ID },
      properties: buildNotionProperties(lead, agencyCheck),
    }),
  });
  const body = await res.json().catch(() => ({}));
  if (!res.ok) throw new Error(`HTTP ${res.status} ${body.code || ''} ${body.message || ''}`.trim());
  return { id: body.id, url: body.url };
}

async function forwardToFormspree(env, form) {
  const fwd = new FormData();
  for (const [k, v] of form.entries()) if (k !== 'company_url') fwd.append(k, v);
  const res = await fetch(env.FORMSPREE_URL, {
    method: 'POST',
    body: fwd,
    headers: { Accept: 'application/json', Referer: 'https://www.obedfavour.com/agencies/', Origin: 'https://www.obedfavour.com' },
  });
  if (!res.ok) throw new Error(`HTTP ${res.status} ${(await res.text()).slice(0, 200)}`);
}

export function telegramText(lead, notion, errors) {
  const lines = [
    '📥 New intro-call request (website)',
    `Agency: ${lead.agency}`,
    `Name: ${lead.name} <${lead.email}>`,
    `Team size: ${lead.teamSize || '?'}`,
    `Region: ${lead.region || '?'}`,
    `Interest: ${lead.interest || '?'}`,
    `Timing: ${lead.timing || '?'}`,
  ];
  if (lead.website) lines.push(`Website: ${lead.website}`);
  lines.push(notion ? `Notion: ${notion.url}` : 'Notion: row NOT created, see the Formspree email');
  for (const e of errors) lines.push(`⚠️ ${e}`);
  return lines.join('\n');
}

async function sendTelegram(env, text) {
  const res = await fetch(`https://api.telegram.org/bot${env.TELEGRAM_BOT_TOKEN}/sendMessage`, {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ chat_id: env.TELEGRAM_CHAT_ID, text, disable_web_page_preview: true }),
  });
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
}
