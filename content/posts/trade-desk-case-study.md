+++
title = "Trade Desk: building a private trading dashboard with n8n and a Telegram bot"
date = 2026-11-09
draft = true
description = "How I turned a trading journal spreadsheet into a private dashboard with a prop-firm-style P&L calendar, performance metrics and a Telegram logging bot, using n8n, Python and Cloudflare Access."
tags = ["n8n", "automation", "telegram", "cloudflare", "google-sheets"]
categories = ["Automation"]
+++

I trade prop-firm futures, and my journal lives in a Google Sheet. It was accurate but slow to read, so I built a private dashboard on top of it. This is how it fits together and what I would do differently.

*All screenshots and videos in this post use synthetic demo data. My real results are not shown.*

![Trade Desk overview](/portfolio/trade-desk/trade-desk-overview.jpg)

## The problem

Prop-firm accounts change status: evaluation, funded, live, failed. A tool tied to one account breaks when that account does. The numbers I wanted (daily P&L, drawdown against the firm's limit, expectancy) were scattered across tabs.

## How it works

- **n8n workflows** read the journal sheet and expose a snapshot, log new trades, and run a Telegram bot (with an error handler and a daily journal reminder).
- **A publish script** recomputes every stat from the raw trades, cross-checks the results against the sheet, scans for leaks, and only then writes the snapshot atomically. If the cross-check fails, nothing is published.
- **The dashboard** is one static page. Account balances, the calendar and the performance section are calculated in the page from the trade list.
- **Cloudflare Access** puts a one-time-PIN login in front of it, restricted to me.

## Account-agnostic by design

Every trade carries an account id. Accounts have a type and status, and optional limits (max drawdown, profit target). If an account fails, it stays in the history but the log form and the API refuse new trades against it.

![Failed account banner](/portfolio/trade-desk/trade-desk-failed-account.jpg)

## The P&L calendar

Each day shows what I gained or lost, in the style of prop-firm dashboards, with weekly totals.

![P&L calendar](/portfolio/trade-desk/trade-desk-calendar.jpg)

## Performance metrics

Win rate, expectancy (in dollars and R), profit factor, payoff ratio, Kelly, max drawdown, recovery factor, Sharpe, Sortino, Calmar, SQN, streaks and a monthly table. Sample-size warnings show when there are too few trades to trust a number.

![Performance metrics](/portfolio/trade-desk/trade-desk-performance.jpg)

## Logging safely

Trades can be logged from the dashboard or from Telegram. The endpoint verifies the Access token, host and origin, enforces size and rate limits, uses an idempotency key plus a duplicate guard, and refuses closed accounts.

![Log a trade](/portfolio/trade-desk/trade-desk-log-review.jpg)

## What I would do differently

- Add automated tests for the metric calculations earlier. I found several rounding and empty-cell bugs through a mix of screenshot review and automated checks.
- Keep the sheet's empty cells truly empty; a stray formula result broke the publish gate once.

## What is next

A voice assistant that logs trades by voice and acts as a trading-psychology coach in Telegram and on the dashboard. That one is still at design stage.

*Interested in something like this for your business? [Book a call](/agencies/#call).*
