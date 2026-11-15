---
title: "Portfolio"
description: "Real automation systems I built and run: a LinkedIn autopilot that checks its own work, enquiries that file themselves, a private trading dashboard, and a review engine for multi location businesses. Plus the growth work behind 10 million YouTube views and a $1.4M raise."
showDate: false
showAuthor: false
showReadingTime: false
showWordCount: false
showPagination: false
showEdit: false
---

<div style="text-align:center;margin:2rem 0;">
<div style="font-size:2.2rem;font-weight:700;margin-bottom:0.5rem;">Systems I run, not slides.</div>
<p style="font-size:1.05rem;opacity:0.8;max-width:600px;margin:0 auto;">Every build below is real and running. The workflow screenshots come from my own n8n. The Trade Desk uses demo data, so my real results stay private. Where something is a reference build and not client work, it says so.</p>
</div>

<div style="text-align:center;margin:1.5rem 0 2.5rem;">
<a href="/agencies/#call" class="btn btn-primary">Book a 30 Minute Intro Call →</a>
</div>

## Systems I built and run myself

Most businesses lose money in the same few places: leads that go cold, work done twice, and problems nobody hears about until it is too late. Each system below plugs one of those leaks. I built them for my own business first, so I know they hold up. Now I build them for agencies and founders, on whatever stack fits: n8n, Cloudflare Workers, the Notion API, Telegram bots, OpenAI models and the tools you already use.

<div class="pf-grid">
<div class="pf-card pf-wide">
<div class="pf-thumbs">
<figure class="pf-shot"><img src="/portfolio/trade-desk/trade-desk-overview.jpg" width="1400" height="875" alt="Trade Desk dashboard: account switcher, equity curve and key stats" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Overview</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/trade-desk/trade-desk-calendar.jpg" width="1400" height="851" alt="Trade Desk P&L calendar showing each trading day's result" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>P&amp;L calendar</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/trade-desk/trade-desk-performance.jpg" width="1400" height="1047" alt="Trade Desk performance metrics: expectancy, profit factor, drawdown and monthly table" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Performance metrics</figcaption></figure>
</div>
<div class="pf-thumbs">
<figure class="pf-shot pf-video"><video controls muted playsinline preload="none" poster="/portfolio/trade-desk/tour-poster.jpg" width="1280" height="720" style="width:100%;height:auto;border-radius:8px;"><source src="/portfolio/trade-desk/tour.mp4" type="video/mp4"></video><figcaption>30 second tour (demo data)</figcaption></figure>
<figure class="pf-shot pf-video"><video controls muted playsinline preload="none" poster="/portfolio/trade-desk/log-poster.jpg" width="1280" height="900" style="width:100%;height:auto;border-radius:8px;"><source src="/portfolio/trade-desk/log.mp4" type="video/mp4"></video><figcaption>Logging a trade from the form</figcaption></figure>
</div>
<div class="pf-title">Trade Desk: a private dashboard that turns a spreadsheet into answers</div>
<div class="pf-line"><strong>The problem:</strong> A trader's results sit in a spreadsheet, and the numbers that matter are slow to find and easy to get wrong. Think daily profit and loss, drawdown (how far an account has fallen from its peak) and expectancy (what an average trade earns).</div>
<div class="pf-line"><strong>What I built:</strong> A private dashboard with a prop firm style profit and loss calendar and the performance numbers a professional investor would ask for. I can log a trade from the dashboard or a Telegram bot. It works for any account: demo, evaluation, funded, live or failed.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> n8n reads the journal in Google Sheets. A publish script recalculates every figure and cross checks it against the sheet, and a failed check blocks the update. The page sits behind a Cloudflare Access login. The logging endpoint verifies that login, limits request rates, blocks duplicates and refuses closed accounts. Screenshots and videos use demo data, not my real results.</div>
<div class="pf-line"><a href="/posts/trade-desk-case-study/">Read how I built it →</a></div>
</div>

<div class="pf-card pf-wide">
<div class="pf-thumbs">
<figure class="pf-shot"><img src="/portfolio/automation/autopilot-late-slot-guard.jpg" width="740" height="408" alt="Autopilot late-slot guard: Start Jitter, Guard Decision and the skipped-slot notice" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Late slot guard</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/autopilot-voice-check-loop.jpg" width="1474" height="402" alt="Autopilot voice-check loop: draft, precheck, judge and retry" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Voice check loop</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/autopilot-approval-gate.jpg" width="667" height="408" alt="Autopilot approval gate: Telegram approval before Publish to LinkedIn" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Approval gate</figcaption></figure>
</div>
<figure class="pf-shot pf-overview"><img src="/portfolio/automation/autopilot-overview.jpg" width="1474" height="310" alt="Scheduled LinkedIn Autopilot workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>The whole Autopilot, from schedule to publish</figcaption></figure>
<div class="pf-title">LinkedIn Autopilot: a posting habit that survives your busiest week</div>
<div class="pf-line"><strong>The problem:</strong> Posting on LinkedIn works until you get busy. Then the habit breaks, and the momentum goes with it.</div>
<div class="pf-line"><strong>What I built:</strong> A system that prepares a post for me twice a day, Monday to Saturday. It asks me for a topic, researches it and writes the draft in my voice. Then it checks that draft against my voice automatically, and the version that passes lands in my Telegram for a yes or no.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> An n8n workflow with an AI voice checker that retries up to 5 times per slot. A late slot guard skips any post that fires more than 45 minutes late, so a stale post never goes out at the wrong hour. Nothing reaches LinkedIn until I tap Approve.</div>
</div>

<div class="pf-card">
<figure class="pf-shot"><img src="/portfolio/automation/linkedin-chat-agent.jpg" width="976" height="408" alt="LinkedIn AI Posting Agent chat workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"></figure>
<div class="pf-title">LinkedIn AI Posting Agent: turn a passing thought into a post</div>
<div class="pf-line"><strong>The problem:</strong> Good ideas show up in the middle of the day and are gone by the time you sit down to write.</div>
<div class="pf-line"><strong>What I built:</strong> A Telegram bot. I send it a thought, a photo or a voice note. It researches the idea, drafts a post in my voice and revises it until I am happy.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> It cannot publish by accident. Posting needs a final "this cannot be undone" confirmation in Telegram.</div>
<div class="pf-line"><a href="/posts/linkedin-ai-posting-agent-case-study/">Read how I built it →</a></div>
</div>

<div class="pf-card">
<figure class="pf-shot"><img src="/portfolio/automation/research-topic-scoring.jpg" width="1006" height="408" alt="Research Topic workflow in n8n: news and trends feeds scored by AI" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"></figure>
<div class="pf-title">Topic research that does the reading for you</div>
<div class="pf-line"><strong>The problem:</strong> Finding something worth saying can eat an hour of reading before you write a word.</div>
<div class="pf-line"><strong>What I built:</strong> It pulls fresh news and search trends on a topic, has AI score every item, and hands the writing step only the best sources, with real names and links.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> Google News and Google Trends go in, up to 20 items get scored and the top 6 are kept. Any source without a real publication name is dropped, so nothing is credited to "Markets" or a bare web address.</div>
</div>

<div class="pf-card pf-wide">
<div class="pf-diagram" role="img" aria-label="Website intake flow: the form on obedfavour.com/agencies posts to a Cloudflare Worker, which creates a row in the Notion Agency Pipeline and sends a Telegram message">
<svg class="pf-diagram-wide" viewBox="0 0 760 170" xmlns="http://www.w3.org/2000/svg" width="100%" preserveAspectRatio="xMidYMid meet">
<defs><marker id="pfArrow" viewBox="0 0 10 10" refX="9" refY="5" markerWidth="7" markerHeight="7" orient="auto-start-reverse"><path d="M0 0L10 5L0 10z" fill="currentColor"/></marker></defs>
<g fill="none" stroke="currentColor" stroke-opacity="0.45" stroke-width="1.5">
<rect x="6" y="55" width="170" height="60" rx="10"/>
<rect x="250" y="55" width="200" height="60" rx="10"/>
<rect x="540" y="8" width="214" height="60" rx="10"/>
<rect x="540" y="102" width="214" height="60" rx="10"/>
<path d="M176 85H244" marker-end="url(#pfArrow)"/>
<path d="M450 85C495 85 495 38 534 38" marker-end="url(#pfArrow)"/>
<path d="M450 85C495 85 495 132 534 132" marker-end="url(#pfArrow)"/>
</g>
<g fill="currentColor" font-family="inherit" text-anchor="middle">
<text x="91" y="82" font-size="15" font-weight="600">Intro call form</text><text x="91" y="102" font-size="12.5" opacity="0.7">/agencies/</text>
<text x="350" y="82" font-size="15" font-weight="600">Cloudflare Worker</text><text x="350" y="102" font-size="12.5" opacity="0.7">spam check, field mapping</text>
<text x="647" y="35" font-size="15" font-weight="600">Notion Agency Pipeline</text><text x="647" y="55" font-size="12.5" opacity="0.7">new row, scored and routed</text>
<text x="647" y="129" font-size="15" font-weight="600">Telegram</text><text x="647" y="149" font-size="12.5" opacity="0.7">ping with a link to the row</text>
</g>
</svg>
<svg class="pf-diagram-tall" viewBox="0 0 360 330" xmlns="http://www.w3.org/2000/svg" width="100%" aria-hidden="true">
<g fill="none" stroke="currentColor" stroke-opacity="0.45" stroke-width="1.5">
<rect x="30" y="6" width="300" height="62" rx="10"/>
<rect x="30" y="118" width="300" height="62" rx="10"/>
<rect x="6" y="238" width="168" height="80" rx="10"/>
<rect x="186" y="238" width="168" height="80" rx="10"/>
<path d="M180 68V112" marker-end="url(#pfArrow)"/>
<path d="M150 180C150 208 90 208 90 232" marker-end="url(#pfArrow)"/>
<path d="M210 180C210 208 270 208 270 232" marker-end="url(#pfArrow)"/>
</g>
<g fill="currentColor" font-family="inherit" text-anchor="middle">
<text x="180" y="34" font-size="17" font-weight="600">Intro call form</text><text x="180" y="56" font-size="14" opacity="0.75">/agencies/</text>
<text x="180" y="146" font-size="17" font-weight="600">Cloudflare Worker</text><text x="180" y="168" font-size="14" opacity="0.75">spam check, field mapping</text>
<text x="90" y="268" font-size="16" font-weight="600">Notion pipeline</text><text x="90" y="290" font-size="13.5" opacity="0.75">new row, scored</text><text x="90" y="308" font-size="13.5" opacity="0.75">and routed</text>
<text x="270" y="268" font-size="16" font-weight="600">Telegram</text><text x="270" y="290" font-size="13.5" opacity="0.75">ping with a link</text><text x="270" y="308" font-size="13.5" opacity="0.75">to the row</text>
</g>
</svg>
</div>
<div class="pf-title">Website enquiries that file themselves</div>
<div class="pf-line"><strong>The problem:</strong> An enquiry that sits in an inbox goes cold. Copying it into a CRM by hand means some never make it.</div>
<div class="pf-line"><strong>What I built:</strong> When someone fills in the intro call form on this site, a row is created in my Notion pipeline, scored and routed to its next step, and I get a Telegram ping. It runs around the clock, off my own machine.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> The form posts to a Cloudflare Worker, which checks for spam and maps the fields. Every enquiry lands with Source set to Website and Stage set to New. A honeypot, a hidden field only bots fill in, turns spam away before it reaches the pipeline.</div>
</div>

<div class="pf-card">
<figure class="pf-shot"><img src="/portfolio/automation/error-alert.jpg" width="460" height="254" alt="Shared error alert workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"></figure>
<div class="pf-title">Failure alerts: know the moment something breaks</div>
<div class="pf-line"><strong>The problem:</strong> Automations fail quietly. You find out a week later, after the damage is done.</div>
<div class="pf-line"><strong>What I built:</strong> A shared safety net. When any run fails, I get a Telegram message straight away.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> One shared n8n error workflow. The alert names the workflow, the exact step, the error and the run ID, so I can fix it without hunting. It is wired into the LinkedIn Autopilot.</div>
</div>

<div class="pf-card">
<div class="pf-title">Blog production with a human sign off</div>
<div class="pf-line"><strong>The problem:</strong> Publishing every week means research, drafting, formatting and checks, and an AI draft can go live without anyone reading it.</div>
<div class="pf-line"><strong>What I built:</strong> A weekly run that researches keywords, drafts the article, formats it to the site template and runs a full build of the site.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> Nothing publishes until I approve the article by name. The gate exists because an early version published unreviewed, so I fixed it by design, not by promising to be careful.</div>
</div>


</div>

## Reference build: ready to deploy

<div class="pf-grid">
<div class="pf-card pf-wide">
<div class="pf-thumbs">
<figure class="pf-shot"><img src="/portfolio/automation/re-score-route.jpg" width="1474" height="342" alt="Reputation Engine: Score and Route workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Score and route</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/re-draft-response.jpg" width="1474" height="342" alt="Reputation Engine: Draft Response workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Draft response</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/re-manager-alert.jpg" width="1474" height="367" alt="Reputation Engine: Manager Alert workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Manager alert</figcaption></figure>
</div>
<div class="pf-title">Reputation and Feedback Intelligence Engine <span class="pf-tag">Reference build</span></div>
<div class="pf-line">A complete system I built from start to finish in n8n and tested live, ready to deploy for an agency's multi location clients.</div>
<div class="pf-line"><strong>The problem:</strong> A business with many locations hears about an unhappy customer too late, and replies come back slow and inconsistent.</div>
<div class="pf-line"><strong>What I built:</strong> Every customer reply is read by AI and scored for mood, seriousness and how sure the AI is. Fixed rules then send it down one of four paths: ready to post, private follow up, escalate, or hand to a human when the AI is not confident. Unhappy customers get a personal draft reply for staff to approve.</div>
<div class="pf-line pf-proof"><strong>Under the hood:</strong> Escalations alert the branch manager by email and Telegram. A draft is never sent to a customer automatically. It passed a live end to end test, 5 out of 5.</div>
</div>
</div>

## Growth work before automation

Before I built automations, I was a growth marketer. That is why my systems aim at pipeline and delivery, not automation for its own sake.

<div style="display:grid;grid-template-columns:repeat(4,1fr);gap:1rem;margin:2rem 0;">
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="10.3M+">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">views, Great Grace TV</div></div>
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="67K+">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">subscribers, Great Grace TV</div></div>
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="73.7M">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">impressions, Great Grace TV</div></div>
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="$1.4M">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">raise supported, Ayoken</div></div>
</div>

### Great Grace TV: from 3,000 subscribers to over 10 million views

As Social Media Growth Marketer at Great Grace TV, I took the channel from 3,000 subscribers to **10.3M+ lifetime views, 67K+ subscribers and 1.3M watch hours**.

{{< figure src="/portfolio/GGM_proof_1.png" alt="YouTube analytics showing 10.3M views, 1.3M watch hours, 67.3K subscribers" >}}

It was not luck. It was a funnel. **73.7M impressions** (the number of times the channel was shown to people) became 4.8M views, which became 755.5K hours watched. Every stage was engineered: the thumbnail won the click, the hook held the view, and the content earned the return.

{{< figure src="/portfolio/GGM_proof_2.png" alt="YouTube impressions funnel: 73.7M impressions, 6.6% CTR, 4.8M views, 9:23 average view duration" >}}

### Other channels I have grown

The same method, tested across very different niches, from brand new channels to established ones.

<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:16px;margin:1.5rem 0;">
<div style="border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;">
{{< figure src="/portfolio/proof_3.png" alt="YouTube analytics showing 724K views and 6.7K subscribers" >}}
<div style="font-size:24px;font-weight:600;margin-top:10px;">724K+ views</div>
<div style="font-size:13px;opacity:0.7;">6.7K subscribers, 118K watch hours</div>
<div style="font-size:13px;opacity:0.9;margin-top:6px;">Grown from zero in about 13 months</div>
</div>
<div style="border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;">
{{< figure src="/portfolio/proof_4.png" alt="YouTube analytics showing 593K views and 2.1K subscribers" >}}
<div style="font-size:24px;font-weight:600;margin-top:10px;">593K+ views</div>
<div style="font-size:13px;opacity:0.7;">2.1K subscribers, 32.5K watch hours</div>
<div style="font-size:13px;opacity:0.9;margin-top:6px;">Grown organically from scratch</div>
</div>
<div style="border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;">
{{< figure src="/portfolio/proof_5.png" alt="YouTube analytics showing 21K views and 1.3K subscribers" >}}
<div style="font-size:24px;font-weight:600;margin-top:10px;">21K views</div>
<div style="font-size:13px;opacity:0.7;">1.3K subscribers in year one</div>
<div style="font-size:13px;opacity:0.9;margin-top:6px;">The system working in real time</div>
</div>
</div>


### Ayoken: community that supported a $1.4M raise

Growth is not only YouTube. At Ayoken, a Web3 NFT marketplace, I built the Discord and Telegram communities from scratch, grew Twitter by 50% and drove community led acquisition that contributed to a **$1.4M preseed raise**.


<div style="background:linear-gradient(135deg,#0F1C2E 0%,#1A3A5C 100%);border-radius:12px;padding:2.5rem 2rem;margin:3rem 0;text-align:center;">
<h2 style="color:#fff;font-size:1.6rem;font-weight:700;margin-bottom:0.5rem;">Want one of these for your agency?</h2>
<p style="color:#a8c4e8;font-size:1rem;line-height:1.6;max-width:460px;margin:0 auto 1.5rem;">Book a 30 minute intro call. We will look at where your team's hours go and which system would pay for itself first.</p>
<a href="/agencies/#call" style="display:inline-block;background:#2E75B6;color:#fff;padding:14px 32px;border-radius:6px;font-size:15px;font-weight:500;text-decoration:none;">Book a 30 Minute Intro Call</a>
</div>
