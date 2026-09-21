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

Most AI automation portfolios show you the finished thing. This one shows you the machine, the real conversation that runs it, and the actual failures it took to get here.

*Updated 21 September 2026. This build changed after it first went up: it now also posts on a schedule, with no human confirmation on that path. Everything below describes what runs today.*

> **Quick answer:** This is a real, working n8n AI agent that researches, drafts and publishes LinkedIn posts through Telegram. In chat it asks for two human approvals before anything goes live. On its Monday to Saturday schedule there is no human confirmation, so every draft has to pass an automated voice check that fails closed, with a hard stop after five failed attempts. The page also documents the real production bugs hit while building it, and what the agent still does badly.

## What it does

This is a self hosted n8n agent on its own dedicated Telegram bot, and it now runs two ways.

**In chat**, you send it a topic, a photo or a voice note. It researches, drafts in my voice, generates or accepts an image, and holds the conversation across the thread. Nothing publishes until I read the draft, tell it to post, and answer a final "this cannot be undone" confirmation.

**On a schedule**, it works without me in the loop. Twice a day, Monday to Saturday, it asks me for a topic, drafts the post, checks its own work, and publishes. There is no human confirmation on this path. That was my decision, and most of this page is about what I put in its place.

It runs on my own infrastructure. Research and images use free sources and free models. One small paid model writes and judges the drafts, under a hard monthly spending cap I set.

<figure>
<img class="my-0 rounded-md nozoom" src="/blog/linkedin-agent-workflow-canvas.jpg" alt="n8n workflow canvas for the LinkedIn AI Posting Agent, showing the full automation end to end" style="cursor:zoom-in;" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>The finished workflow, end to end, inside n8n.</figcaption>
</figure>

## What it actually looks like to use

This is the chat path, and it isn't a mockup. Here's a real conversation: a draft coming back, an image being generated and sent for approval, right inside Telegram.

<figure class="portrait-shot">
<img class="nozoom" src="/blog/linkedin-agent-draft-image-approval.jpg" alt="Telegram conversation showing a LinkedIn post draft and an image approval request from the AI agent" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>A real draft, then a request to approve the image that goes with it.</figcaption>
</figure>

On the chat path, right before anything reaches LinkedIn, it asks one more time, separately, because publishing under my own name isn't something a workflow gets to decide alone.

<figure class="portrait-shot">
<img class="nozoom" src="/blog/linkedin-agent-publish-confirmation.jpg" alt="Telegram conversation showing the final publish confirmation gate and success message from the AI agent" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>The final gate — 'this cannot be undone' — then real confirmation once it's live.</figcaption>
</figure>

And here's the actual result, live on LinkedIn, not a screenshot of a staging environment.

<figure class="portrait-shot">
<img class="nozoom" src="/blog/linkedin-agent-live-post.jpg" alt="Live LinkedIn post published by the AI posting agent" onclick="openShotLightbox(this.src,this.alt)">
<figcaption>A real post, published live by this exact system.</figcaption>
</figure>

## Why the chat path has two approval gates

Early in this build, the image model was told explicitly not to render any text inside a generated image. It ignored that instruction and produced an image with garbled, misspelled text baked into it. It got approved anyway, because the approval was focused on the caption, not the picture, and it went out live before anyone noticed. AI systems don't fail loud, they fail quiet. So the chat path keeps both gates.

## Then I removed them for the scheduled path

Two gates every time meant the agent could only post when I had time to babysit it. So for the schedule I made a different trade. I took the human out and put a gate in its place that runs on every single draft. I accepted the risk that a post goes out without me reading it first. The safeguards below shrink that risk. They do not erase it, and I won't pretend they do.

## What the schedule does

Monday to Saturday, never Sunday. Two slots, around 09:00 and 17:00 West Africa time, each pushed by a random delay of up to 50 minutes, so posts drift from day to day instead of landing on the same second forever. A poster that fires at an identical time every day is the easiest bot signature to spot. LinkedIn does not publish its thresholds, so this is a precaution, not a guarantee. If my reach drops or LinkedIn warns me, I change the frequency, not just the timing.

Before each run it messages me on Telegram and asks if I have a topic. I have twenty minutes to reply in the chat. If I do, it writes on my topic. If I say no, or say nothing, it picks one itself. It researches what is moving in business and consumer behavior, in AI and automation, and in growth marketing, or it builds the post around a framework from my own book on getting customers from YouTube. It researches from Google News and Google Trends, ranks what it finds with a free model, and drafts from the best few items.

## How a draft earns the right to publish

Three things have to hold before anything reaches LinkedIn.

**1. It has to pass a judge, and the judge fails closed.** A second model reads every draft against my actual voice profile, my writing rules and the research the draft was written from. If it can't read the verdict, or the check itself errors, the draft counts as a fail, never a pass. A specific number, name or date that is not in the research fails the draft. So does a hedge, a generic AI phrase, a sales pitch or a weak hook. The anti fabrication rules from the original build are all still in force. A sentence that opens by naming its source gets rewritten by code when the code recognizes it, and rejected by the judge when it doesn't.

**2. A failed draft goes back, and there is a hard stop.** The judge's exact reasons go back to the writer and it redrafts. After five failed attempts it stops, sends me the best draft and the last reason it was rejected on Telegram, and publishes nothing. It can never loop forever, and it can never quietly ship something that didn't pass.

**3. The format is checked by code, not by hope.** The first line of a post is the hook. It sits on its own line, followed by a blank line. LinkedIn hides everything after roughly the first 140 to 210 characters behind "see more", so a hook that runs into the body gets cut mid thought. I found that defect on a real published post. Asking a model nicely does not fix it reliably. So the draft is checked for it, the judge scores the hook on whether it stops a scroll by itself, and a code backstop fixes the spacing at publish time without changing a word.

The image model still garbles text now and then. That is a known limit I have accepted, not one I have fixed. And none of this makes the scheduled path a finished bet. I check its runs against the raw execution data before I call the schedule proven.

## Real bugs, because real builds have them

Telegram markdown parsing that broke message delivery, and later regressed after unrelated changes. A DNS resolution failure that looked like a code bug and wasn't. A research digest that silently returned nothing for weeks because one free source failed quietly. Fabricated citation years. Vague, unsourced claims. A voice profile that leaked phrasing from its own training example. An image-generation step that crashed on an undefined topic variable. A broken image-decline loop that looked fine on screen and wasn't. Every one of these was found by testing against raw execution data, not by trusting that a workflow looked finished — because "structurally complete" and "actually works" turned out to be two different claims.

The schedule added more. The first version of the judge failed every draft in a real run, because it punished things the publish code already handles and treated plain opinions as fabricated facts. The fix was to judge the text exactly as it will be published, and to limit fabrication to specific facts that can be checked. The code that catches a sentence opening with its source only knows a fixed list of verbs, so "frames" and "puts" slip through it. That gap is still open in the chat path. And the code that hands my topic reply to the waiting run used a function the workflow sandbox does not have. I only found it when my own real reply failed, because I had tested it somewhere the function existed. Every one of these came out of raw execution data, not out of a demo that passed.

## Built to be handed to someone else

The parts that change for a client are the voice, the credentials, the LinkedIn account and the schedule. Today some of them are written into the build script that generates the workflow instead of a settings file, so handing it to a client means regenerating it with their details, not flipping a switch. It is the same kind of system I build for founders who want consistent, trustworthy AI content without becoming the last line of defense against their own automation.

Want this built around your own voice and your own account? [Book a 1-on-1 call](https://selar.com/74i4823703) and let's talk about it.
