+++
title = "AI Just Got Roughly Half Price Again. Here Is What That Actually Changes For You"
date = '2026-09-25T09:10:00+01:00'
draft = false
description = "Claude and GPT-6 pricing both dropped this week. Here's the real AI automation cost for small business once cost per successful task is the metric."
tags = ["AI pricing", "AI automation", "small business", "Anthropic", "OpenAI"]
categories = ["Marketing"]
[params]
  showTableOfContents = true
  [[params.faq]]
    question = "Did Claude and GPT prices actually get cut, or is this hype?"
    answer = "Yes, both cuts are confirmed and dated. Anthropic launched Claude Opus 5.5 on September 22, 2026 at $4 per million input tokens and $20 per million output tokens, down from Opus 5's $5 and $25, a 20 percent cut, with cache reads down 60 percent. The same day, OpenAI cut GPT-6 Sol from $4/$20 to $2/$10 per million tokens and GPT-6 Luna from $0.20/$1.20 to $0.10/$0.50, both flat 50 percent cuts."
  [[params.faq]]
    question = "Does a price cut mean my AI automation costs will drop by the same percentage?"
    answer = "Not necessarily. Token price is only one part of the bill. McKinsey found the cost of completing the same task can vary by up to 30 times depending on how the agent workflow is built, meaning routing, retries, and which model handles which step matter more than the sticker price on any single model."
  [[params.faq]]
    question = "What should a small business actually do after a price cut like this?"
    answer = "Re-check anything you decided was too expensive to automate a few months ago, since the per task math has likely changed. Then measure your existing automations by cost per successful task rather than cost per token, and check whether you are using one expensive model for work a cheaper model could handle just as well."
  [[params.faq]]
    question = "Is now a good time to build new AI automations for my business?"
    answer = "The cost floor is lower than it has been, which makes previously marginal automations worth pricing out again. The bigger factor is still workflow design. A well built automation on today's pricing costs less than it did in the spring. A poorly built one still wastes money no matter how cheap the underlying model gets."
+++

AI just got roughly half price again. On September 22, 2026, Anthropic shipped Claude Opus 5.5 at 20 percent lower token pricing than Opus 5, with cache reads down 60 percent and typical workload costs down 40 percent once you factor in how the model uses tokens. The same day, OpenAI cut GPT-6 Sol and GPT-6 Luna pricing by 50 percent, straight in half, no asterisks on the headline number.

Here is the thing nobody selling you an AI tool wants to say out loud: a cheaper model is not the same as a cheaper business. Price per token and price per finished result are two different numbers, and right now the gap between them is where most small businesses are quietly losing money.

I work with founders on AI automation every week, and the question I get after every one of these price drop headlines is always the same: does this mean I should be paying less for AI now? The honest answer is maybe, and it depends on something most people never check.

## What actually happened on September 22

Let's get the real numbers on the table, because "roughly half price" undersells some of this and oversells other parts.

Claude Opus 5.5 now runs $4 per million input tokens and $20 per million output tokens, down from Opus 5's $5 and $25. That is a 20 percent cut on the sticker price. Cache reads dropped further, from $0.50 to $0.20 per million tokens, a 60 percent cut. Anthropic says that combination brings typical workload costs down 40 percent, and it also scrapped the 5 hour usage caps that used to throttle heavy users.

OpenAI's move is the bigger headline. GPT-6 Sol went from $4 input and $20 output per million tokens down to $2 and $10. GPT-6 Luna, the lighter model, dropped from 20 cents input and $1.20 output down to 10 cents and 50 cents. Both are flat 50 percent cuts, on both sides of the ledger. For context on what that buys, OpenAI reported GPT-6 Sol scoring 33.2 percent on AutomationBench at its highest reasoning setting, at a cost of 27 cents per task.

So yes, the hook is real. Two of the three labs everyone builds on just cut prices inside the same 24 hours. That has not happened at this scale before.

## So does this mean your AI bill is about to drop?

Not automatically, and this is the part that matters more than the announcement itself. McKinsey published research this same week showing that the cost of completing the same task can vary by as much as 30 times depending on which agent setup you use to do it. Not which model. Which setup. Same task, thirty times the spread, because agentic workflows involve multiple steps, routing decisions, retries, and tool calls that stack on top of the base token price.

That is the nuance the headline never carries. A 20 percent or 50 percent cut to the per token price is real money, but if your workflow is inefficient, if it is calling the wrong model for a simple step, if it is not using caching, that inefficiency eats the discount and then some. McKinsey also found that about a third of the organizations it surveyed are already spending more than 10 percent of their technology budget on AI, 60 percent plan to spend even more next year, and roughly 1 in 5 say AI costs are starting to constrain their operating budget. Prices are falling and bills are still climbing. Those two things are happening at the same time, to the same companies.

Box's CEO pointed to research this same week showing that routing tasks across multiple models instead of defaulting to one flagship model for everything can cut token costs by as much as 15 times. That is not a pricing story. That is an architecture story. And architecture is the thing small businesses almost never audit, because it is invisible until someone forces you to look at it.

## What this actually changes for you

Three things, and only three, because everything else is noise.

One, re-run the build versus buy math on anything you shelved because it looked too expensive six months ago. A workflow that cost $0.50 per completed task at old Opus or old GPT-6 Sol pricing is meaningfully cheaper today. If you passed on automating something because the per task cost didn't pencil out, price it again with the new numbers before you assume the answer is still no.

Two, stop measuring your AI spend by the model's list price and start measuring it by cost per successful task. That is the exact metric McKinsey is pointing at. A cheap model that fails half the time and needs a human to clean up after it is not cheap. A slightly pricier model that finishes the job correctly on the first pass usually wins on total cost once you count the rework.

Three, check whether you are using one model for everything. If your automation calls GPT-6 Sol or Claude Opus for a task that a smaller, cheaper model like GPT-6 Luna could handle just as well, you are paying flagship prices for commodity work. This is the single most common thing I find when I look under the hood of a founder's existing automation stack: one expensive model doing a job three different models should be splitting between them.

## The read

Every few months a lab cuts prices and the headline says AI just got cheaper. The truth is narrower than that. Access to intelligence got cheaper. Whether that turns into cheaper operations for your business depends entirely on whether your workflow was built to take advantage of it, or just built to work at all.

The founders who actually benefit from this news are not the ones who read the headline and feel good about it. They are the ones who open up their automations this week, check which model is doing which job, and rebuild the routing around the new price floor. The price of intelligence keeps falling. The price of a badly built workflow does not fall with it.

If you are running AI automation in your business right now and have not audited what model is doing what, that is the actual action item buried under this week's news. Everything else is just a headline.

## FAQ

### Did Claude and GPT prices actually get cut, or is this hype?

Yes, both cuts are confirmed and dated. Anthropic launched Claude Opus 5.5 on September 22, 2026 at $4 per million input tokens and $20 per million output tokens, down from Opus 5's $5 and $25, a 20 percent cut, with cache reads down 60 percent. The same day, OpenAI cut GPT-6 Sol from $4/$20 to $2/$10 per million tokens and GPT-6 Luna from $0.20/$1.20 to $0.10/$0.50, both flat 50 percent cuts.

### Does a price cut mean my AI automation costs will drop by the same percentage?

Not necessarily. Token price is only one part of the bill. McKinsey found the cost of completing the same task can vary by up to 30 times depending on how the agent workflow is built, meaning routing, retries, and which model handles which step matter more than the sticker price on any single model.

### What should a small business actually do after a price cut like this?

Re-check anything you decided was too expensive to automate a few months ago, since the per task math has likely changed. Then measure your existing automations by cost per successful task rather than cost per token, and check whether you are using one expensive model for work a cheaper model could handle just as well.

### Is now a good time to build new AI automations for my business?

The cost floor is lower than it has been, which makes previously marginal automations worth pricing out again. The bigger factor is still workflow design. A well built automation on today's pricing costs less than it did in the spring. A poorly built one still wastes money no matter how cheap the underlying model gets.
