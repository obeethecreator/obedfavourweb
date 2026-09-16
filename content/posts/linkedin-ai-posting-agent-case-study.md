+++
title = "LinkedIn AI Posting Agent — A Real Case Study, Bugs Included"
date = '2026-09-16T12:00:00+01:00'
draft = false
description = "Most AI automation portfolios show you the finished thing. This one shows you the machine, the real conversation that runs it, and the nine actual failures it took to get here."
tags = ["AI automation", "n8n", "case study", "LinkedIn"]
categories = ["Marketing"]
+++

<style>
.portrait-shot { max-width: 340px; margin: 1.75rem auto; }
.portrait-shot img { width: 100%; height: auto; display: block; cursor: zoom-in; }
.portrait-shot figcaption { text-align: center; }
@media (max-width: 600px) {
  .portrait-shot { max-width: 72%; }
}
</style>

Most AI automation portfolios show you the finished thing. This one shows you the machine, the real conversation that runs it, and the nine actual failures it took to get here.

## What it does

This is a self-hosted, zero-paid-API n8n agent that runs on its own dedicated Telegram bot. Send it a topic, a photo, or a voice note, and it researches from free sources, drafts a LinkedIn post in my own voice, generates or accepts an image, and only publishes after two separate human approvals — a draft approval, then a final "this cannot be undone" publish confirmation. It holds conversation memory across the thread.

<figure>
<img class="my-0 rounded-md nozoom" src="/blog/linkedin-agent-workflow-canvas.jpg" alt="n8n workflow canvas for the LinkedIn AI Posting Agent, showing the full automation end to end" style="cursor:zoom-in;" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>The finished workflow, end to end, inside n8n.</figcaption>
</figure>

## What it actually looks like to use

This isn't a mockup. Here's a real conversation: a draft coming back, an image being generated and sent for approval, right inside Telegram.

<figure class="portrait-shot">
<img class="nozoom" src="/blog/linkedin-agent-draft-image-approval.jpg" alt="Telegram conversation showing a LinkedIn post draft and an image approval request from the AI agent" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>A real draft, then a request to approve the image that goes with it.</figcaption>
</figure>

Right before anything reaches LinkedIn, it asks one more time, separately, because publishing under my own name isn't something a workflow gets to decide alone.

<figure class="portrait-shot">
<img class="nozoom" src="/blog/linkedin-agent-publish-confirmation.jpg" alt="Telegram conversation showing the final publish confirmation gate and success message from the AI agent" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>The final gate — 'this cannot be undone' — then real confirmation once it's live.</figcaption>
</figure>

And here's the actual result, live on LinkedIn, not a screenshot of a staging environment.

<figure class="portrait-shot">
<img class="nozoom" src="/blog/linkedin-agent-live-post.jpg" alt="Live LinkedIn post published by the AI posting agent" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>A real post, published live by this exact system.</figcaption>
</figure>

## Why two approval gates, not zero

Early in this build, the image model was told explicitly not to render any text inside a generated image. It ignored that instruction and produced an image with garbled, misspelled text baked into it. It got approved anyway, because the approval was focused on the caption, not the picture, and it went out live before anyone noticed. That's the whole argument for keeping a human in the loop in one sentence: AI systems don't fail loud, they fail quiet, and a fully autonomous poster is a liability, not a convenience.

## Nine real bugs, because real builds have them

Telegram markdown parsing that broke message delivery, and later regressed after unrelated changes. A DNS resolution failure that looked like a code bug and wasn't. A research digest that silently returned nothing for weeks because one free source failed quietly. Fabricated citation years. Vague, unsourced claims. A voice profile that leaked phrasing from its own training example. An image-generation step that crashed on an undefined topic variable. A broken image-decline loop that looked fine on screen and wasn't. Every one of these was found by testing against raw execution data, not by trusting that a workflow looked finished — because "structurally complete" and "actually works" turned out to be two different claims.

## Built to be handed to someone else

Voice, credentials, and the LinkedIn account are configuration, not hardcoded values. A second instance for a client's own voice and account is a config change, not a rebuild — which is exactly the point. This is the same kind of system I build for founders who want consistent, trustworthy AI content without becoming the last line of defense against their own automation.

Want this built around your own voice and your own account? [Book a 1-on-1 call](https://selar.com/74i4823703) and let's talk about it.
