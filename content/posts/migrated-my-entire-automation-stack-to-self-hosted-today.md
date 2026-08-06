+++
title = "Migrated My Entire Automation Stack to Self-Hosted Today"
date = '2026-08-05T16:58:46+01:00'
draft = true
description = "Spent today moving everything off the trial n8n Cloud instance onto my own self-hosted setup — the booking pipeline, the trend digest, and this conten"
tags = ["growth marketing", "AI automation"]
categories = ["Marketing"]
+++

Spent today moving everything off the trial n8n Cloud instance onto my own self-hosted setup — the booking pipeline, the trend digest, and this content pipeline you're reading right now.

The honest version: it wasn't a clean copy-paste. Credentials don't transfer between instances by design, so every connection had to be rebuilt by hand. One workflow's schedule trigger silently failed to register even though the system reported it as active — found only because I insisted on real proof instead of trusting a status flag. A draft-vs-published-version mismatch nearly let a bug ship because an edit looked saved but wasn't actually live.

None of that is a knock on self-hosting. It's the actual cost of owning your own infrastructure instead of renting someone else's — more control, more responsibility, and zero recurring fees once it's actually working.

If you're weighing self-hosted vs. cloud for your own automation, [book a call](https://www.obedfavour.com/services/) is where I'd start that conversation.
