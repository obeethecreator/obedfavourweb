---
title: "Portfolio"
description: "AI systems I run my own business on, built with n8n and Cloudflare Workers: a LinkedIn posting agent with a voice-check and approval gate, topic research, error alerts and a website intake pipeline. Plus a reference build for review management, and earlier growth work at Great Grace TV and Ayoken."
showDate: false
showAuthor: false
showReadingTime: false
showWordCount: false
showPagination: false
showEdit: false
---

<div style="text-align:center;margin:2rem 0;">
<div style="font-size:2.2rem;font-weight:700;margin-bottom:0.5rem;">Systems I run, not slides.</div>
<p style="font-size:1.05rem;opacity:0.8;max-width:600px;margin:0 auto;">Every screenshot below is the real workflow from my own n8n. Where something is a reference build rather than client work, it says so. Client case studies are added here as agency builds ship.</p>
</div>

<div style="text-align:center;margin:1.5rem 0 2.5rem;">
<a href="/agencies/#call" class="btn btn-primary">Book a 30-Minute Intro Call →</a>
</div>

## AI systems running my own business

The same kinds of systems I build for agencies and founders: content engines, production pipelines with approval gates, research, intake and alerting. Built on the right stack for your business: n8n, Cloudflare Workers, the Notion API, Telegram bots, OpenAI and Cloudflare Workers AI models, and the tools you already use.

<div class="pf-grid">
<div class="pf-card pf-wide">
<div class="pf-thumbs">
<figure class="pf-shot"><img src="/portfolio/automation/autopilot-late-slot-guard.jpg" width="740" height="408" alt="Autopilot late-slot guard: Start Jitter, Guard Decision and the skipped-slot notice" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Late-slot guard</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/autopilot-voice-check-loop.jpg" width="1474" height="402" alt="Autopilot voice-check loop: draft, precheck, judge and retry" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Voice-check loop</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/autopilot-approval-gate.jpg" width="667" height="408" alt="Autopilot approval gate: Telegram approval before Publish to LinkedIn" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Approval gate</figcaption></figure>
</div>
<figure class="pf-shot pf-overview"><img src="/portfolio/automation/autopilot-overview.jpg" width="1474" height="310" alt="Scheduled LinkedIn Autopilot workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>The whole Autopilot, from schedule to publish</figcaption></figure>
<div class="pf-title">LinkedIn Scheduled Autopilot</div>
<div class="pf-line"><strong>Problem:</strong> A posting habit breaks the first week you get busy.</div>
<div class="pf-line"><strong>What it does:</strong> Twice a day, Monday to Saturday, it asks me for a topic, researches it, drafts in my voice, runs the draft through an automated voice check and sends the version that passes to me in Telegram.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> Up to 5 voice-check attempts per slot. Slots that fire more than 45 minutes late are skipped. Nothing reaches LinkedIn until I tap Approve.</div>
</div>

<div class="pf-card">
<figure class="pf-shot"><img src="/portfolio/automation/linkedin-chat-agent.jpg" width="976" height="408" alt="LinkedIn AI Posting Agent chat workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"></figure>
<div class="pf-title">LinkedIn AI Posting Agent</div>
<div class="pf-line"><strong>Problem:</strong> Good post ideas come up during the day and are gone by the time there is time to write.</div>
<div class="pf-line"><strong>What it does:</strong> A Telegram chat agent. I send a thought, a photo or a voice note; it researches, drafts in my voice and revises until I am happy.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> It only publishes after a "cannot be undone" confirmation in Telegram.</div>
<div class="pf-line"><a href="/posts/linkedin-ai-posting-agent-case-study/">Read the build write-up →</a></div>
</div>

<div class="pf-card">
<figure class="pf-shot"><img src="/portfolio/automation/research-topic-scoring.jpg" width="1006" height="408" alt="Research Topic workflow in n8n: news and trends feeds scored by AI" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"></figure>
<div class="pf-title">Topic research and scoring</div>
<div class="pf-line"><strong>Problem:</strong> Finding something worth posting about takes an hour of reading.</div>
<div class="pf-line"><strong>What it does:</strong> Pulls Google News and Google Trends for a topic, scores every item with an AI model and hands the drafting step the best sources, with names and links.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> Scores up to 20 items and keeps the top 6. Sources without a real publication name are dropped, so nothing gets cited to "Markets" or a bare domain.</div>
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
<div class="pf-title">Website intake to pipeline</div>
<div class="pf-line"><strong>Problem:</strong> Enquiries sit in an inbox until someone copies them into the CRM, and they get lost when a laptop is closed.</div>
<div class="pf-line"><strong>What it does:</strong> The intro call form on this site posts to a Cloudflare Worker. It creates a row in my Notion Agency Pipeline, where the score and the next step are worked out automatically, and pings me on Telegram. It runs around the clock, off my own machine.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> Every request lands with Source set to Website and Stage set to New, and a hidden honeypot field turns spam away before it reaches the pipeline.</div>
</div>

<div class="pf-card">
<figure class="pf-shot"><img src="/portfolio/automation/error-alert.jpg" width="460" height="254" alt="Shared error alert workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"></figure>
<div class="pf-title">Failure alerts</div>
<div class="pf-line"><strong>Problem:</strong> Automations fail quietly, and you find out a week later.</div>
<div class="pf-line"><strong>What it does:</strong> A shared error workflow. When a run fails, it messages me on Telegram straight away.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> The alert names the workflow, the node, the error and the execution ID. It is the error workflow for the Scheduled Autopilot.</div>
</div>

<div class="pf-card">
<div class="pf-title">Blog production pipeline with an approval gate</div>
<div class="pf-line"><strong>Problem:</strong> Publishing consistently means research, drafting, formatting, builds and checks every week, and AI drafts can go live unreviewed.</div>
<div class="pf-line"><strong>What it does:</strong> A weekly production run researches keywords, drafts, formats to the site template and runs a full build.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> Nothing publishes until I approve the article by name. The gate exists because an early version published unreviewed.</div>
</div>


</div>

## Reference build

<div class="pf-grid">
<div class="pf-card pf-wide">
<div class="pf-thumbs">
<figure class="pf-shot"><img src="/portfolio/automation/re-score-route.jpg" width="1474" height="342" alt="Reputation Engine: Score and Route workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Score and route</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/re-draft-response.jpg" width="1474" height="342" alt="Reputation Engine: Draft Response workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Draft response</figcaption></figure>
<figure class="pf-shot"><img src="/portfolio/automation/re-manager-alert.jpg" width="1474" height="367" alt="Reputation Engine: Manager Alert workflow in n8n" loading="lazy" decoding="async" class="nozoom" onclick="openShotLightbox(this.src,this.alt)"><figcaption>Manager alert</figcaption></figure>
</div>
<div class="pf-title">Reputation and Feedback Intelligence Engine <span class="pf-tag">Reference build</span></div>
<div class="pf-line">A complete system I built end to end in n8n and tested live, ready to deploy for agencies' multi-location clients.</div>
<div class="pf-line"><strong>Problem:</strong> Multi-location businesses hear about unhappy customers too late, and replies are slow and inconsistent.</div>
<div class="pf-line"><strong>What it does:</strong> Every customer reply is scored by AI for sentiment, severity and confidence, then routed by fixed rules: ready to post, private follow-up, escalation, or human review when the AI is unsure. Negative replies get a personal draft for staff to approve.</div>
<div class="pf-line pf-proof"><strong>Detail:</strong> Escalations alert the branch manager by email and Telegram. Drafts are never sent to the customer automatically. It passed a 5 of 5 live end-to-end run.</div>
</div>
</div>

## Growth work before automation

Before I built automations, I was a growth marketer. It is why the systems I build are aimed at pipeline and delivery, not automation for its own sake.

<div style="display:grid;grid-template-columns:repeat(4,1fr);gap:1rem;margin:2rem 0;">
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="10.3M+">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">views, Great Grace TV</div></div>
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="67K+">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">subscribers, Great Grace TV</div></div>
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="73.7M">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">impressions, Great Grace TV</div></div>
<div class="tech-card" style="text-align:center;"><div style="font-size:28px;font-weight:600;" data-target="$1.4M">0</div><div style="font-size:12px;opacity:0.6;margin-top:6px;">raise supported, Ayoken</div></div>
</div>

### Great Grace TV: 3K to a 10-million-view channel

As Social Media Growth Marketer at Great Grace TV, I grew the channel from 3,000 subscribers into a content engine with **10.3M+ lifetime views, 67K+ subscribers, and 1.3M watch hours**.

{{< figure src="/portfolio/GGM_proof_1.png" alt="YouTube analytics showing 10.3M views, 1.3M watch hours, 67.3K subscribers" >}}

It wasn't luck - it was a funnel. **73.7M impressions** turned into 4.8M views turned into 755.5K watch hours. Every stage engineered: the thumbnail won the click, the hook held the view, the content earned the return.

{{< figure src="/portfolio/GGM_proof_2.png" alt="YouTube impressions funnel: 73.7M impressions, 6.6% CTR, 4.8M views, 9:23 average view duration" >}}

### Other channels I have grown

The same growth method across very different niches, from brand-new channels to established ones.

<div style="display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:16px;margin:1.5rem 0;">
<div style="border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;">
{{< figure src="/portfolio/proof_3.png" alt="YouTube analytics showing 724K views and 6.7K subscribers" >}}
<div style="font-size:24px;font-weight:600;margin-top:10px;">724K+ views</div>
<div style="font-size:13px;opacity:0.7;">6.7K subscribers - 118K watch hours</div>
<div style="font-size:13px;opacity:0.9;margin-top:6px;">Grown from zero in ~13 months</div>
</div>
<div style="border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;">
{{< figure src="/portfolio/proof_4.png" alt="YouTube analytics showing 593K views and 2.1K subscribers" >}}
<div style="font-size:24px;font-weight:600;margin-top:10px;">593K+ views</div>
<div style="font-size:13px;opacity:0.7;">2.1K subscribers - 32.5K watch hours</div>
<div style="font-size:13px;opacity:0.9;margin-top:6px;">Grown organically from scratch</div>
</div>
<div style="border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;">
{{< figure src="/portfolio/proof_5.png" alt="YouTube analytics showing 21K views and 1.3K subscribers" >}}
<div style="font-size:24px;font-weight:600;margin-top:10px;">21K views</div>
<div style="font-size:13px;opacity:0.7;">1.3K subscribers - year one</div>
<div style="font-size:13px;opacity:0.9;margin-top:6px;">The system working in real time</div>
</div>
</div>


### Ayoken: community that supported a $1.4M raise

Growth isn't only YouTube. At Ayoken (Web3 NFT marketplace), I built Discord and Telegram communities from scratch, grew Twitter 50%, and drove community-led acquisition that contributed to a **$1.4M pre-seed raise**.


<div style="background:linear-gradient(135deg,#0F1C2E 0%,#1A3A5C 100%);border-radius:12px;padding:2.5rem 2rem;margin:3rem 0;text-align:center;">
<h2 style="color:#fff;font-size:1.6rem;font-weight:700;margin-bottom:0.5rem;">Want one of these for your agency?</h2>
<p style="color:#a8c4e8;font-size:1rem;line-height:1.6;max-width:460px;margin:0 auto 1.5rem;">Book a 30-minute intro call. We'll look at where your team's hours go and which system would pay for itself first.</p>
<a href="/agencies/#call" style="display:inline-block;background:#2E75B6;color:#fff;padding:14px 32px;border-radius:6px;font-size:15px;font-weight:500;text-decoration:none;">Book a 30-Minute Intro Call</a>
</div>
