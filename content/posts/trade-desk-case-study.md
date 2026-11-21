+++
title = "Trade Desk: a private trading desk that keeps me to my own rules"
date = 2026-11-09
lastmod = 2026-11-21
draft = false
description = "How I built a private trading dashboard and Telegram bot with a rules checklist, a transparent market bias panel, event and news alerts, a plain English assistant and a research grounded coach, using n8n, OpenAI with guards, Google Sheets and Cloudflare Access."
tags = ["n8n", "automation", "telegram", "openai", "cloudflare", "google-sheets"]
categories = ["Automation"]
+++

I trade futures on prop firm accounts, and I keep a journal in a Google Sheet. The journal was accurate, but it did not stop the mistakes that cost the most: taking a trade outside my plan, being surprised by a data release, or chasing a loss. So I built a private trading desk around the journal: a dashboard and a Telegram bot that keep me to my own rules, warn me before scheduled news, answer questions from my own records and help me reset when a trade goes wrong.

This is my own tool and I run it on my own trading. It does not predict prices, give signals or tell me what to buy or sell. Nothing here is a claim about trading results.

*Every screenshot and video in this post uses invented demo data. My real accounts, trades and conversations are not shown.*

![Trade Desk overview with demo data](/portfolio/trade-desk/trade-desk-overview.jpg)

## The problem

Most trading damage is done in a few minutes: a trade taken because it looked good, a position open when inflation data comes out, a second trade taken to win back the first one. A spreadsheet records all of that afterwards. It does nothing at the moment it matters, and the numbers I wanted (daily profit and loss, drawdown against the firm's limit, how often I follow my own rules) were scattered across tabs.

## What it does

### A rules checklist I complete before I trade

My trading rules are written down and versioned. Before each session I record the previous day's high, low and close for each instrument, and I write my trade ideas before a fixed deadline in New York. Ideas written later are marked late, and each trade is linked to the idea it followed. The dashboard's "My rules" card shows the rules and today's checklist, and the bot answers `/checklist` with the same picture.

![My rules card with demo rules and today's checklist](/portfolio/trade-desk/trade-desk-myrules.jpg)

### A market bias panel that shows its working

For the Nasdaq 100 (NQ and MNQ), the Dow (YM and MYM), the US dollar index, Bitcoin and Ether, the panel gives a daily lean (bullish, bearish or mixed) built from stated technical and macro signals: trend against moving averages, momentum, the previous day's range, Treasury yields, the dollar and volatility. Every card says how many signals agree, lists each signal in plain words, keeps the 08:30 New York snapshot, and tracks how often the lean matched the session, with a small sample warning until there are enough days to mean anything. It is a transparent summary, not advice and not a signal.

The data is public and keyless by design. Crypto prices are live from public exchange feeds. Index and dollar inputs are daily figures from the St. Louis Fed (FRED), and they become live quotes only when I add an optional market data key. A daily lean does not need tick data, and this keeps the tool free to run.

![Market bias panel with demo data](/portfolio/trade-desk/trade-desk-bias.jpg)

### Alerts for scheduled data and breaking news

The bot sends a countdown 15 and 2 minutes before high impact US releases such as inflation, jobs and Fed decisions, and a briefing of the day's events at 08:00 New York. A news watcher polls official feeds and news sources, removes duplicates, and asks a model to score each new headline for how likely it is to move the index futures. Only high scores become alerts, with hourly and daily caps, a cooldown per topic and a mute command. Every alert ends with "Heads up only. Not a trade signal."

The sources are an editable list in the settings sheet: the Financial Times, the Wall Street Journal, the BBC, CNBC, MarketWatch, Seeking Alpha, investingLive and Business Insider, the official Fed, ECB, BLS and SEC feeds, and a separate Nigeria and Africa lane with Nairametrics and BusinessDay. Headlines are filtered by keyword before any model sees them, which keeps the scoring cost down. When several outlets carry the same story, I get one alert that names all of them, and no single outlet can fill more than 40 percent of a day's alerts while others have something to say. Nigeria and Africa stories appear in the briefing, and only alert when they matter globally, such as oil output or a central bank decision.

<figure><img src="/portfolio/trade-desk/trade-desk-alerts-telegram.jpg" width="840" height="1332" alt="Alerts in Telegram: a countdown before US inflation data with invented numbers, then a real headline reported by FT world and investingLive, merged into one alert" loading="lazy" decoding="async"><figcaption>An invented countdown, then a real headline from a test run on 20 November, reported by two outlets and sent once</figcaption></figure>

### A plain English assistant that asks before it writes

I can ask the bot questions in plain English ("how did I do this week?", "what's on the calendar?") and it answers from the journal. When a message would change something, such as logging a trade, it shows what it understood and writes nothing until I confirm. Every message gets exactly one reply, and the exact commands (`/rules`, `/stats`, `/checklist` and others) work the way they always did.

![The assistant in Telegram answering from the journal and asking before logging a trade (demo)](/portfolio/trade-desk/trade-desk-assistant-telegram.jpg)

### A coach grounded in cited research, with a safety check first

When a loss or a broken rule gets to me, I can talk it through with a trading psychology coach in Telegram or on the dashboard. A safety check runs before anything else: if a message suggests a crisis, the coach steps out of coaching, points to real help and pauses its check ins, and that message is never sent to a model or stored. Research ideas come only from a small library of checked sources, each named in the sentence, with a Sources button for the full reference. Anything the model writes that is not backed by that library or by my own journal is dropped before I see it.

The coach talks like a calm mentor. It starts by reflecting what I said, asks one question at a time, offers ideas as suggestions rather than orders, and only cites research when a source clearly fits. In an emotional moment it cites nothing at all, and if I ask whether I should quit, it never tells me to quit or to stay. It just helps me see what is behind the question and reminds me that sleeping on it is allowed.

When I ask for something to read, or tap "Suggest something to read", it looks in its own checked library first, then in scholarly papers and well known books. Every link is opened and checked against its title and author before I see it, and nothing is suggested if nothing passes.

<figure><img src="/portfolio/trade-desk/trade-desk-coach-panel.jpg" width="1400" height="875" alt="The coach panel on the dashboard: a warm reply to an invented message about breaking a rule, with one question at the end" loading="lazy" decoding="async"><figcaption>The coach on the dashboard (invented conversation)</figcaption></figure>

<figure><img src="/portfolio/trade-desk/trade-desk-coach-telegram.jpg" width="840" height="1856" alt="The coach in Telegram: a warm reply to an invented message, then two checked research papers suggested to read, each with a link" loading="lazy" decoding="async"><figcaption>The coach in Telegram, with reading suggestions from its checked library (invented conversation)</figcaption></figure>

<figure><video controls muted playsinline preload="none" poster="/portfolio/trade-desk/assistant-coach-poster.jpg" width="420" height="760" style="max-width:420px;width:100%;height:auto;border-radius:8px;"><source src="/portfolio/trade-desk/assistant-coach.webm" type="video/webm"><source src="/portfolio/trade-desk/assistant-coach.mp4" type="video/mp4">Your browser cannot play this video. The screenshots above show the same conversations.</video><figcaption>The assistant and the coach in Telegram, 23 seconds, no sound (demo data)</figcaption></figure>

### The dashboard itself

The dashboard works for any account type: demo, evaluation, funded, live or failed. It shows a prop firm style profit and loss calendar and the performance figures a professional investor would ask for, with warnings when there are too few trades to trust a number.

![Profit and loss calendar](/portfolio/trade-desk/trade-desk-calendar.jpg)

![Performance metrics](/portfolio/trade-desk/trade-desk-performance.jpg)

## How it is built

- **n8n workflows** run the bot, the alerts, the coach, the daily plan checks, the 22:00 journal reminder, the dashboard snapshot and trade logging. They are pinned to an exact n8n 2.x version. Upgrades are rehearsed first on a disposable copy with no real data, and every change has a written rollback.
- **A Telegram bot** is the main interface, with buttons for confirmations and one reply per message.
- **OpenAI models with guards.** A number guard drops any figure that is not in my message, my journal or a cited source, so the model cannot invent values. Every write waits for a confirmation step. Each assistant has a daily cost cap and an hourly limit, and every model call is logged with its cost.
- **Google Sheets is the source of truth.** A publish script recalculates every figure from the raw trades, cross checks the results against the sheet and scans for anything private before the dashboard updates. A failed check blocks the update.
- **Cloudflare Access** puts a login in front of the dashboard. The server checks the login token, host and origin on every request, limits request rates, blocks duplicate trades and refuses closed accounts.
- **Tests and rollbacks.** Every deploy runs the test suites, a dry run on copies of the workflows with sending switched off, and a check that the bot's message router did not change. Each deploy keeps copies of what it replaced and a one command rollback.

## Results so far

These are engineering numbers I can check in the code and the logs. They say nothing about trading performance.

| Measure | Value |
| --- | --- |
| n8n workflows behind the desk and the bot | 16 |
| Automated tests across the bot, the dashboard and the bias engine | 340 |
| Average model cost per message (real messages) | about $0.0003 for the assistant, about $0.0004 for the coach |
| Daily cost caps | $0.20 for the assistant, $0.30 for the coach |
| Replies per message | exactly one, checked for commands, plain English and the coach |
| Time from message to reply | about 7 seconds (median of 29 runs) |

I have not measured how much time it saves on journaling, so I leave that out.

## What I would do differently

- Add tests for the metric calculations earlier. I found several rounding and empty cell bugs through a mix of screenshot review and automated checks.
- Treat the network as unreliable from day one. Most failures in the logs were short DNS and connection drops, not code bugs, and retries and clear failure notices matter more than I expected.

## What I would build next

- Voice logging, so a trade can be recorded by speaking to the bot.
- A weekly review written from the journal: what I planned, what I did, and where the rules slipped.
- Importing fills from the broker, so logging needs less typing.

*Interested in something like this for your business? [Book a call](/agencies/#call).*
