+++
title = "Free Growth Audit"
date = '2026-05-29T10:00:00+01:00'
draft = false
slug = "audit"
showDate = false
showReadingTime = false
showWordCount = false
showAuthor = false
showTitle = false
description = "Free AI-powered growth audit. Find out exactly where your brand is losing growth and revenue in 12 questions."
+++

<style>
.audit-wrap{position:fixed;top:0;left:0;width:100vw;height:100vh;background:#0F1C2E;z-index:9998;overflow-y:auto;display:flex;flex-direction:column;}
.audit-inner{max-width:640px;width:90%;margin:0 auto;padding:5rem 0 5rem;flex:1;display:flex;flex-direction:column;}
.a-logo{font-size:13px;color:#5B9BD5;letter-spacing:0.1em;text-transform:uppercase;margin-bottom:3rem;opacity:0.7;}
.a-prog{height:3px;background:rgba(255,255,255,0.08);border-radius:2px;margin-bottom:0.75rem;}
.a-prog-fill{height:3px;background:#2E75B6;border-radius:2px;transition:width 0.5s ease;}
.a-prog-labels{display:flex;justify-content:space-between;margin-bottom:3rem;}
.a-prog-label{font-size:11px;color:rgba(255,255,255,0.3);letter-spacing:0.06em;}
.a-step{display:none;animation:fadeIn 0.3s ease;}
.a-step.active{display:block;}
@keyframes fadeIn{from{opacity:0;transform:translateY(8px);}to{opacity:1;transform:translateY(0);}}
.a-badge{display:inline-block;font-size:11px;font-weight:600;letter-spacing:0.1em;text-transform:uppercase;padding:4px 12px;border-radius:20px;margin-bottom:1.5rem;}
.a-badge-blue{background:rgba(46,117,182,0.2);color:#5B9BD5;border:1px solid rgba(46,117,182,0.3);}
.a-badge-amber{background:rgba(186,117,23,0.2);color:#E8A84A;border:1px solid rgba(186,117,23,0.3);}
.a-q{font-size:24px;font-weight:600;color:#ffffff;line-height:1.35;margin-bottom:0.75rem;}
.a-sub{font-size:14px;color:rgba(255,255,255,0.45);line-height:1.6;margin-bottom:2rem;}
.a-opts{display:flex;flex-direction:column;gap:10px;margin-bottom:2.5rem;}
.a-opt{border:1px solid rgba(255,255,255,0.1);border-radius:12px;padding:16px 20px;cursor:pointer;font-size:15px;color:rgba(255,255,255,0.8);background:rgba(255,255,255,0.04);text-align:left;transition:all 0.2s;display:flex;justify-content:space-between;align-items:center;gap:12px;}
.a-opt:hover{border-color:rgba(46,117,182,0.5);background:rgba(46,117,182,0.08);color:#fff;}
.a-opt.sel{border:2px solid #2E75B6;background:rgba(46,117,182,0.15);color:#ffffff;}
.a-tag{font-size:11px;font-weight:600;padding:3px 10px;border-radius:20px;white-space:nowrap;flex-shrink:0;}
.tag-r{background:rgba(226,75,74,0.2);color:#F87171;border:1px solid rgba(226,75,74,0.3);}
.tag-m{background:rgba(186,117,23,0.2);color:#E8A84A;border:1px solid rgba(186,117,23,0.3);}
.tag-g{background:rgba(99,153,34,0.2);color:#86EFAC;border:1px solid rgba(99,153,34,0.3);}
.a-nav{display:flex;justify-content:space-between;align-items:center;}
.a-count{font-size:13px;color:rgba(255,255,255,0.25);}
.a-next{padding:13px 28px;background:#2E75B6;color:white;border:none;border-radius:10px;font-size:15px;font-weight:600;cursor:pointer;transition:background 0.2s;}
.a-next:hover{background:#1A5EA8;}
.a-next:disabled{opacity:0.25;cursor:not-allowed;}
.a-back{padding:13px 16px;background:transparent;color:rgba(255,255,255,0.4);border:1px solid rgba(255,255,255,0.1);border-radius:10px;font-size:14px;cursor:pointer;transition:all 0.2s;}
.a-back:hover{color:rgba(255,255,255,0.7);border-color:rgba(255,255,255,0.2);}
.a-divider{display:flex;align-items:center;gap:12px;margin:2rem 0 1.5rem;}
.a-divider span{font-size:11px;color:rgba(255,255,255,0.25);letter-spacing:0.08em;text-transform:uppercase;white-space:nowrap;}
.a-divider::before,.a-divider::after{content:'';flex:1;height:1px;background:rgba(255,255,255,0.07);}
.results{display:none;}
.results.active{display:block;}
.loading-wrap{text-align:center;padding:5rem 0;}
.loading-title{font-size:18px;font-weight:600;color:#fff;margin-bottom:0.5rem;}
.loading-sub{font-size:14px;color:rgba(255,255,255,0.4);margin-bottom:2.5rem;}
.dots{display:flex;justify-content:center;gap:8px;}
.dot{width:10px;height:10px;border-radius:50%;background:#2E75B6;animation:pulse 1.4s ease-in-out infinite;}
.dot:nth-child(2){animation-delay:0.2s;}
.dot:nth-child(3){animation-delay:0.4s;}
@keyframes pulse{0%,100%{opacity:0.2;transform:scale(0.7);}50%{opacity:1;transform:scale(1.1);}}
.r-content{display:none;}
.r-content.show{display:block;}
.scores{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:2rem;}
.s-card{border:1px solid rgba(255,255,255,0.08);border-radius:14px;padding:1.5rem;text-align:center;background:rgba(255,255,255,0.03);}
.s-label{font-size:11px;color:rgba(255,255,255,0.35);letter-spacing:0.1em;text-transform:uppercase;margin-bottom:0.6rem;}
.s-num{font-size:40px;font-weight:700;margin-bottom:0.25rem;line-height:1;}
.s-sub{font-size:12px;color:rgba(255,255,255,0.35);line-height:1.4;}
.breakdown{margin-bottom:2rem;}
.b-title{font-size:12px;color:rgba(255,255,255,0.3);letter-spacing:0.1em;text-transform:uppercase;margin-bottom:1.25rem;}
.b-row{display:flex;align-items:center;gap:10px;margin-bottom:10px;}
.b-label{font-size:13px;color:rgba(255,255,255,0.5);width:130px;flex-shrink:0;}
.b-track{flex:1;height:5px;background:rgba(255,255,255,0.06);border-radius:3px;overflow:hidden;}
.b-fill{height:5px;border-radius:3px;transition:width 1.2s ease;}
.b-val{font-size:12px;font-weight:600;width:36px;text-align:right;}
.ai-box{border:1px solid rgba(46,117,182,0.25);border-radius:16px;padding:1.75rem;background:rgba(46,117,182,0.05);margin-bottom:2rem;}
.ai-label{font-size:11px;color:#5B9BD5;letter-spacing:0.1em;text-transform:uppercase;margin-bottom:1rem;display:flex;align-items:center;gap:8px;}
.ai-label::after{content:'';flex:1;height:1px;background:rgba(46,117,182,0.2);}
.ai-text{font-size:15px;color:rgba(255,255,255,0.8);line-height:1.9;white-space:pre-wrap;}
.cta-wrap{border:1px solid rgba(46,117,182,0.2);border-radius:16px;padding:2rem;text-align:center;background:rgba(46,117,182,0.06);}
.cta-title{font-size:20px;font-weight:700;color:#fff;margin-bottom:0.6rem;}
.cta-sub{font-size:14px;color:rgba(255,255,255,0.5);margin-bottom:1.5rem;line-height:1.6;}
.cta-btn{display:inline-block;background:#2E75B6;color:white;padding:15px 40px;border-radius:10px;font-size:15px;font-weight:600;text-decoration:none;border:none;cursor:pointer;transition:background 0.2s;}
.cta-btn:hover{background:#1A5EA8;}
.cta-note{font-size:12px;color:rgba(255,255,255,0.25);margin-top:10px;}
.err-box{background:rgba(226,75,74,0.1);border:1px solid rgba(226,75,74,0.2);border-radius:10px;padding:1rem 1.25rem;font-size:14px;color:#F87171;margin-bottom:1.5rem;}
@media(max-width:600px){.a-q{font-size:20px;}.scores{grid-template-columns:1fr;}.b-label{width:100px;}.audit-inner{padding:2rem 0 4rem;}}
.audit-wrap *{text-decoration:none !important;}
.audit-wrap a{text-decoration:none !important;}
.audit-wrap button{text-decoration:none !important;}
.audit-wrap .a-opt span{text-decoration:none !important;border-bottom:none !important;}
.audit-wrap .a-opt{text-decoration:none !important;border-bottom:none !important;}
.a-next:active{transform:scale(0.97);background:#1A5EA8;}
.a-next:focus{outline:none;box-shadow:0 0 0 3px rgba(46,117,182,0.4);}
.a-back:active{transform:scale(0.97);}
.a-opt:active{transform:scale(0.99);}
.cta-btn:active{transform:scale(0.97);}
.a-next{transition:background 0.2s,transform 0.1s,box-shadow 0.2s;}
.a-next:not(:disabled):hover{background:#1A5EA8;box-shadow:0 4px 20px rgba(46,117,182,0.4);}
.a-opt{transition:all 0.15s,transform 0.1s;}
.a-opt.sel{box-shadow:0 0 0 1px rgba(46,117,182,0.5),0 4px 16px rgba(46,117,182,0.2);}
.audit-wrap .a-logo a{color:#5B9BD5 !important;text-decoration:none !important;}
.audit-nav-hint{position:fixed;top:0;left:0;right:0;z-index:9999;background:rgba(15,28,46,0.95);backdrop-filter:blur(8px);padding:12px 2rem;display:flex;justify-content:space-between;align-items:center;border-bottom:1px solid rgba(255,255,255,0.07);}
.audit-nav-home{font-size:13px;font-weight:600;color:#ffffff !important;text-decoration:none !important;letter-spacing:0.04em;}
.audit-nav-links{display:flex;gap:1.5rem;}
.audit-nav-links a{font-size:13px;color:rgba(255,255,255,0.5) !important;text-decoration:none !important;transition:color 0.2s;}
.audit-nav-links a:hover{color:#ffffff !important;}
</style>

<div class="audit-wrap">
<div class="audit-inner">

<div class="audit-nav-hint">
  <a href="/" class="audit-nav-home">Obed Favour</a>
  <div class="audit-nav-links">
    <a href="/">Home</a>
    <a href="/about">About</a>
    <a href="/services">Services</a>
    <a href="https://calendly.com/obeethecreator/30min" target="_blank">Book a call</a>
  </div>
</div>

<div class="a-prog"><div class="a-prog-fill" id="prog" style="width:0%"></div></div>
<div class="a-prog-labels">
  <span class="a-prog-label">Social media</span>
  <span class="a-prog-label">Revenue funnel</span>
  <span class="a-prog-label">AI analysis</span>
</div>

<div class="a-step active" id="s0">
  <div class="a-badge a-badge-blue">Social media - 1 of 7</div>
  <div class="a-q">How often does your brand post on social media?</div>
  <div class="a-sub">Consistency is the single biggest driver of organic growth.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="0" data-val="0" data-label="Rarely - once a month or less"><span>Rarely - once a month or less</span><span class="a-tag tag-r">Critical gap</span></button>
    <button class="a-opt" data-q="0" data-val="1" data-label="A few times a month - inconsistent"><span>A few times a month - no real consistency</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="0" data-val="2" data-label="1-3 times per week - fairly regular"><span>1-3 times per week - fairly regular</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="0" data-val="3" data-label="Daily or near daily - very consistent"><span>Daily or near daily - very consistent</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><span class="a-count">1 / 12</span><button class="a-next" id="n0" disabled onclick="next(0)">Next</button></div>
</div>

<div class="a-step" id="s1">
  <div class="a-badge a-badge-blue">Social media - 2 of 7</div>
  <div class="a-q">Do you have a documented content strategy with clear pillars and goals?</div>
  <div class="a-sub">Strategy is what separates brands that grow from brands that just stay busy.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="1" data-val="0" data-label="No strategy - post whatever feels relevant"><span>No - we post whatever feels relevant</span><span class="a-tag tag-r">Critical gap</span></button>
    <button class="a-opt" data-q="1" data-val="1" data-label="Some ideas but nothing documented"><span>Some ideas but nothing documented</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="1" data-val="2" data-label="Have a strategy but don't always follow it"><span>We have a strategy but don't always follow it</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="1" data-val="3" data-label="Documented strategy followed consistently"><span>Yes - documented and followed consistently</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(1)">Back</button><span class="a-count">2 / 12</span><button class="a-next" id="n1" disabled onclick="next(1)">Next</button></div>
</div>

<div class="a-step" id="s2">
  <div class="a-badge a-badge-blue">Social media - 3 of 7</div>
  <div class="a-q">Does your content actually convert - do followers DM, book, or buy?</div>
  <div class="a-sub">Likes without leads means your content is entertaining but not working.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="2" data-val="0" data-label="Get likes but zero business from social"><span>We get likes but zero business from social</span><span class="a-tag tag-r">Critical gap</span></button>
    <button class="a-opt" data-q="2" data-val="1" data-label="Very occasional enquiries - not consistent"><span>Very occasional enquiries - not consistent</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="2" data-val="2" data-label="Get some leads but could be much better"><span>We get some leads but it could be much better</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="2" data-val="3" data-label="Social consistently drives leads and revenue"><span>Social consistently drives leads and revenue</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(2)">Back</button><span class="a-count">3 / 12</span><button class="a-next" id="n2" disabled onclick="next(2)">Next</button></div>
</div>

<div class="a-step" id="s3">
  <div class="a-badge a-badge-blue">Social media - 4 of 7</div>
  <div class="a-q">Are you using short-form video as part of your content mix?</div>
  <div class="a-sub">Reels, Shorts, and TikTok have the highest organic reach of any format right now.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="3" data-val="0" data-label="No video - only static images or text"><span>No - only static images or text posts</span><span class="a-tag tag-r">Missing out</span></button>
    <button class="a-opt" data-q="3" data-val="1" data-label="Tried video a few times but not consistent"><span>Tried it a few times but not consistent</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="3" data-val="2" data-label="Post video occasionally"><span>We post video occasionally</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="3" data-val="3" data-label="Video is a core part of our strategy"><span>Video is a core part of our strategy</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(3)">Back</button><span class="a-count">4 / 12</span><button class="a-next" id="n3" disabled onclick="next(3)">Next</button></div>
</div>

<div class="a-step" id="s4">
  <div class="a-badge a-badge-blue">Social media - 5 of 7</div>
  <div class="a-q">Do you track analytics and make decisions based on data?</div>
  <div class="a-sub">The brands that grow fastest are the ones that measure what actually matters.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="4" data-val="0" data-label="Never look at analytics"><span>We never look at analytics</span><span class="a-tag tag-r">Critical gap</span></button>
    <button class="a-opt" data-q="4" data-val="1" data-label="Check follower count occasionally"><span>We check follower count occasionally</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="4" data-val="2" data-label="Track some metrics but unsure what to do with them"><span>Track some metrics but unsure what to do with them</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="4" data-val="3" data-label="Track key metrics and adjust strategy weekly"><span>Track key metrics and adjust strategy weekly</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(4)">Back</button><span class="a-count">5 / 12</span><button class="a-next" id="n4" disabled onclick="next(4)">Next</button></div>
</div>

<div class="a-step" id="s5">
  <div class="a-badge a-badge-blue">Social media - 6 of 7</div>
  <div class="a-q">Do you repurpose content across multiple platforms?</div>
  <div class="a-sub">One piece of content should become many. If it doesn't, you are working too hard for too little output.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="5" data-val="0" data-label="Create separate content for each platform - no repurposing"><span>No - we create separate content for each platform</span><span class="a-tag tag-r">High effort, low output</span></button>
    <button class="a-opt" data-q="5" data-val="1" data-label="Sometimes repurpose but no system"><span>Sometimes, but no system in place</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="5" data-val="2" data-label="Repurpose occasionally"><span>We repurpose occasionally</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="5" data-val="3" data-label="Full repurposing system in place"><span>We have a full repurposing system</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(5)">Back</button><span class="a-count">6 / 12</span><button class="a-next" id="n5" disabled onclick="next(5)">Next</button></div>
</div>

<div class="a-step" id="s6">
  <div class="a-badge a-badge-blue">Social media - 7 of 7</div>
  <div class="a-q">Do you have a content calendar planned at least 2 weeks ahead?</div>
  <div class="a-sub">Planning ahead is what makes consistency possible when life gets busy.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="6" data-val="0" data-label="No planning - post when we remember"><span>No planning - we post when we remember</span><span class="a-tag tag-r">Critical gap</span></button>
    <button class="a-opt" data-q="6" data-val="1" data-label="Plan loosely but nothing formal"><span>We plan loosely but nothing formal</span><span class="a-tag tag-r">Needs work</span></button>
    <button class="a-opt" data-q="6" data-val="2" data-label="Have a calendar but don't always follow it"><span>We have a calendar but don't always follow it</span><span class="a-tag tag-m">Getting there</span></button>
    <button class="a-opt" data-q="6" data-val="3" data-label="30-day content calendar planned in advance"><span>Yes - 30-day content calendar planned in advance</span><span class="a-tag tag-g">Strong</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(6)">Back</button><span class="a-count">7 / 12</span><button class="a-next" id="n6" disabled onclick="next(6)">Next - Revenue audit</button></div>
</div>

<div class="a-step" id="s7">
  <div class="a-divider"><span>Revenue funnel audit</span></div>
  <div class="a-badge a-badge-amber">Revenue funnel - 1 of 5</div>
  <div class="a-q">How do new customers discover your brand?</div>
  <div class="a-sub">Awareness is the top of your revenue funnel. No awareness means no pipeline.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="7" data-val="0" data-label="Mostly word of mouth - no active marketing"><span>Mostly word of mouth - no active marketing</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="7" data-val="1" data-label="Some social but no consistent strategy"><span>Some social but no consistent strategy</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="7" data-val="2" data-label="Consistent social plus some SEO or paid"><span>Consistent social + some SEO or paid</span><span class="a-tag tag-m">Small leak</span></button>
    <button class="a-opt" data-q="7" data-val="3" data-label="Multi-channel - social, SEO, ads, referrals"><span>Multi-channel - social, SEO, ads, referrals</span><span class="a-tag tag-g">Healthy</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(7)">Back</button><span class="a-count">8 / 12</span><button class="a-next" id="n7" disabled onclick="next(7)">Next</button></div>
</div>

<div class="a-step" id="s8">
  <div class="a-badge a-badge-amber">Revenue funnel - 2 of 5</div>
  <div class="a-q">When someone finds you, do they take a clear next step?</div>
  <div class="a-sub">Every visitor that leaves without acting is lost revenue.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="8" data-val="0" data-label="No clear CTA on content or website"><span>No clear CTA on our content or website</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="8" data-val="1" data-label="Have a website but it doesn't convert well"><span>We have a website but it does not convert well</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="8" data-val="2" data-label="Get some enquiries but conversion is inconsistent"><span>Some enquiries but conversion is inconsistent</span><span class="a-tag tag-m">Small leak</span></button>
    <button class="a-opt" data-q="8" data-val="3" data-label="Clear CTAs, landing pages, and booking system in place"><span>Clear CTAs, landing pages, booking system in place</span><span class="a-tag tag-g">Healthy</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(8)">Back</button><span class="a-count">9 / 12</span><button class="a-next" id="n8" disabled onclick="next(8)">Next</button></div>
</div>

<div class="a-step" id="s9">
  <div class="a-badge a-badge-amber">Revenue funnel - 3 of 5</div>
  <div class="a-q">How quickly does someone experience value after enquiring?</div>
  <div class="a-sub">The window between interest and decision is short. Slow follow-up loses warm leads.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="9" data-val="0" data-label="No system - people enquire and just wait"><span>No system - people enquire and just wait</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="9" data-val="1" data-label="Manual follow-up - slow and inconsistent"><span>Manual follow-up - slow and inconsistent</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="9" data-val="2" data-label="Some automation but gaps in the journey"><span>Some automation but gaps in the journey</span><span class="a-tag tag-m">Small leak</span></button>
    <button class="a-opt" data-q="9" data-val="3" data-label="Fast automated onboarding - value within 24 hours"><span>Fast automated onboarding - value within 24hrs</span><span class="a-tag tag-g">Healthy</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(9)">Back</button><span class="a-count">10 / 12</span><button class="a-next" id="n9" disabled onclick="next(9)">Next</button></div>
</div>

<div class="a-step" id="s10">
  <div class="a-badge a-badge-amber">Revenue funnel - 4 of 5</div>
  <div class="a-q">Do you have an active retention system to keep customers coming back?</div>
  <div class="a-sub">Acquiring a new customer costs 5x more than retaining one.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="10" data-val="0" data-label="No retention strategy at all"><span>No retention strategy at all</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="10" data-val="1" data-label="Occasionally check in but no system"><span>We occasionally check in but no system</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="10" data-val="2" data-label="Email marketing but not consistent"><span>Email marketing but not consistent</span><span class="a-tag tag-m">Small leak</span></button>
    <button class="a-opt" data-q="10" data-val="3" data-label="Active retention - emails, community, regular touchpoints"><span>Active retention - emails, community, touchpoints</span><span class="a-tag tag-g">Healthy</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(10)">Back</button><span class="a-count">11 / 12</span><button class="a-next" id="n10" disabled onclick="next(10)">Next</button></div>
</div>

<div class="a-step" id="s11">
  <div class="a-badge a-badge-amber">Revenue funnel - 5 of 5</div>
  <div class="a-q">Do your happy customers systematically refer others?</div>
  <div class="a-sub">Referral revenue is the most profitable growth channel. If it is accidental, you are leaving money on the table.</div>
  <div class="a-opts">
    <button class="a-opt" data-q="11" data-val="0" data-label="Never ask for referrals or reviews"><span>We never ask for referrals or reviews</span><span class="a-tag tag-r">Revenue leak</span></button>
    <button class="a-opt" data-q="11" data-val="1" data-label="Sometimes get referrals but it is accidental"><span>Sometimes clients refer us but it is accidental</span><span class="a-tag tag-m">Small leak</span></button>
    <button class="a-opt" data-q="11" data-val="2" data-label="Ask occasionally but no formal referral system"><span>We ask occasionally but no formal system</span><span class="a-tag tag-m">Small leak</span></button>
    <button class="a-opt" data-q="11" data-val="3" data-label="Active referral programme - incentivised and systematic"><span>Active referral programme - systematic</span><span class="a-tag tag-g">Healthy</span></button>
  </div>
  <div class="a-nav"><button class="a-back" onclick="back(11)">Back</button><span class="a-count">12 / 12</span><button class="a-next" id="n11" disabled onclick="next(11)">Almost there</button></div>
</div>

<div class="a-step" id="s12">
  <div class="a-badge a-badge-blue">One last step</div>
  <div class="a-q">Where should we send your personalised audit report?</div>
  <div class="a-sub">Obee will write your report and email you a copy to keep. No spam ever.</div>
  <div style="display:flex;flex-direction:column;gap:10px;margin-bottom:1.5rem;">
    <input type="text" id="user-name" placeholder="Your first name" style="padding:14px 18px;border-radius:10px;border:1px solid rgba(255,255,255,0.15);background:rgba(255,255,255,0.06);color:#ffffff;font-size:15px;outline:none;font-family:inherit;" oninput="checkForm()" />
    <input type="email" id="user-email" placeholder="Your email address" style="padding:14px 18px;border-radius:10px;border:1px solid rgba(255,255,255,0.15);background:rgba(255,255,255,0.06);color:#ffffff;font-size:15px;outline:none;font-family:inherit;" oninput="checkForm()" />
  </div>
  <div style="display:flex;align-items:flex-start;gap:10px;margin-bottom:1.5rem;">
    <input type="checkbox" id="gdpr-consent" onchange="checkForm()" style="width:18px;height:18px;margin-top:2px;flex-shrink:0;accent-color:#2E75B6;cursor:pointer;" />
    <label for="gdpr-consent" style="font-size:13px;color:rgba(255,255,255,0.5);line-height:1.6;cursor:pointer;">I agree to receive my personalised audit report and occasional marketing insights from Obed Favour. You can unsubscribe at any time. No spam ever.</label>
  </div>
  <p style="font-size:11px;color:rgba(255,255,255,0.2);margin-bottom:1.5rem;">By submitting you confirm you have read and agree to our <a href="/privacy" style="color:#5B9BD5;text-decoration:none;">Privacy Policy</a>. We process your data in accordance with GDPR and CAN-SPAM regulations.</p>
  <div class="a-nav"><button class="a-back" onclick="back(12)">Back</button><span class="a-count"></span><button class="a-next" id="n12" disabled onclick="runAudit()">Get my AI audit</button></div>
</div>

<div class="results" id="results">
  <div class="loading-wrap" id="loading-wrap">
    <div class="loading-title">Analysing your responses...</div>
    <div class="loading-sub">Building your personalised growth report</div>
    <div class="dots"><div class="dot"></div><div class="dot"></div><div class="dot"></div></div>
  </div>
  <div class="r-content" id="r-content">
    <div class="scores">
      <div class="s-card">
        <div class="s-label">Social score</div>
        <div class="s-num" id="ss" style="color:#5B9BD5;">-</div>
        <div class="s-sub" id="sl"></div>
      </div>
      <div class="s-card">
        <div class="s-label">Revenue leaking</div>
        <div class="s-num" id="rs" style="color:#F87171;">-</div>
        <div class="s-sub" id="rl"></div>
      </div>
    </div>
    <div class="breakdown">
      <div class="b-title">Score breakdown</div>
      <div id="bars"></div>
    </div>
    <div class="ai-box">
      <div class="ai-label">Your personalised growth report</div>
      <div class="ai-text" id="ai-text"></div>
    </div>
    <div id="err-box" class="err-box" style="display:none;"></div>
    <div class="cta-wrap">
      <div class="cta-title">Ready to fix these gaps?</div>
      <div class="cta-sub">Book a free 30-minute strategy call. We will walk through your results and build a clear action plan specific to your brand.</div>
      <a href="https://calendly.com/obeethecreator/30min" target="_blank" class="cta-btn">Book a free strategy call</a>
      <div class="cta-note">30 min - no obligation - real advice</div>
    </div>
    <div style="text-align:center;margin-top:2rem;">
      <button class="a-back" onclick="restart()">Start over</button>
    </div>
  </div>
</div>

</div>
</div>

<script>
const ans={};const alab={};
const bl=['Consistency','Content strategy','Conversion','Short-form video','Analytics','Repurposing','Content planning','Awareness','Acquisition','Activation','Retention','Referrals'];
document.querySelectorAll('.a-opt').forEach(b=>{b.addEventListener('click',function(){const q=this.dataset.q;document.querySelectorAll('[data-q="'+q+'"]').forEach(x=>x.classList.remove('sel'));this.classList.add('sel');ans[q]=parseInt(this.dataset.val);alab[q]=this.dataset.label;document.getElementById('n'+q).disabled=false;});});
function next(q){document.getElementById('s'+q).classList.remove('active');document.getElementById('s'+(q+1)).classList.add('active');document.getElementById('prog').style.width=Math.round(((q+2)/13)*100)+'%';window.scrollTo(0,0);}function checkForm(){const n=document.getElementById('user-name').value.trim();const e=document.getElementById('user-email').value.trim();const c=document.getElementById('gdpr-consent').checked;document.getElementById('n12').disabled=!(n.length>0&&e.includes('@')&&c);}
function back(q){document.getElementById('s'+q).classList.remove('active');document.getElementById('s'+(q-1)).classList.add('active');document.getElementById('prog').style.width=Math.round((q/13)*100)+'%';window.scrollTo(0,0);}
function restart(){Object.keys(ans).forEach(k=>delete ans[k]);Object.keys(alab).forEach(k=>delete alab[k]);document.querySelectorAll('.a-opt').forEach(b=>b.classList.remove('sel'));document.querySelectorAll('.a-next').forEach(b=>b.disabled=true);document.getElementById('results').classList.remove('active');document.getElementById('loading-wrap').style.display='block';document.getElementById('r-content').classList.remove('show');document.getElementById('ai-text').textContent='';document.getElementById('s0').classList.add('active');document.getElementById('prog').style.width='0%';try{document.getElementById('user-name').value='';document.getElementById('user-email').value='';document.getElementById('gdpr-consent').checked=false;document.getElementById('n12').disabled=true;}catch(e){}window.scrollTo(0,0);}
async function runAudit(){
  const userName=(document.getElementById('user-name')?.value.trim()||'there');
  const userEmail=(document.getElementById('user-email')?.value.trim()||'');
  document.getElementById('s12').classList.remove('active');
  document.getElementById('results').classList.add('active');
  document.getElementById('prog').style.width='100%';
  window.scrollTo(0,0);
  const v=Array.from({length:12},(_,i)=>ans[i]||0);
  const ss=Math.round((v.slice(0,7).reduce((a,b)=>a+b,0)/21)*100);
  const rh=Math.round((v.slice(7).reduce((a,b)=>a+b,0)/15)*100);
  const rl=100-rh;
  const sl=Object.entries(alab).map(([q,l])=>{const s=v[parseInt(q)];const lv=s===0?'Critical gap':s===1?'Needs work':s===2?'Getting there':'Strong';return '- '+bl[parseInt(q)]+': '+l+' ('+lv+', '+s+'/3)';}).join('\n');
  const prompt='The person reading this is called '+userName+'. You are Obed Favour, a growth marketer and AI automation expert. Write a personalised growth audit report for this founder. Use powerful emotional and psychological persuasion throughout - speak to their fears, their ambitions, their identity as a builder. Make them feel deeply understood. Make the cost of inaction feel real and urgent. Make booking a call feel like the obvious next step.\n\nDo NOT use placeholder text like [Business Owner Name] or [Your Contact Information]. Write directly to them. No brackets. No templates. Address them by their first name naturally throughout. Sign off as Obed Favour only. Never use placeholder text or brackets like [Name] or [Contact].\n\nStructure your report like this:\n\nParagraph 1 - PATTERN INTERRUPT + MIRROR: Open with something so specific to their scores that they feel like you have been watching their business. Name the exact gap between where they are and where they could be. Make them feel seen.\n\nParagraph 2 - LOSS AVERSION: Tell them what is being lost RIGHT NOW - in real terms. Every day without fixing this costs them leads, revenue, and momentum. Be specific about what their scores mean in business terms. Make the pain of inaction vivid.\n\nParagraph 3 - BIGGEST GAP + CONCRETE ACTION: Their single most critical gap. Explain it like a trusted advisor who has seen this destroy businesses before. Give one specific action they can take this week.\n\nParagraph 4 - SECOND GAP + FUTURE PACE: Paint a vivid picture of what changes when this is fixed. Use language like - imagine waking up to... / picture a business where... / what would it mean if... Make them emotionally invest in the outcome before deciding.\n\nParagraph 5 - IDENTITY + SOCIAL PROOF: Acknowledge something they are doing right. Connect it to who they are as a founder. Tell them this shows they have the mindset - they just need the system. Mention a real result (1900% YouTube growth, 3.5M organic views, $1.4M fundraise supported) that shows what the right system produces.\n\nParagraph 6 - URGENCY + DIRECT CTA: Close with urgency that feels real not manufactured. The brands that fix these gaps in the next 30 days will be the ones who dominate their space in 6 months. The ones who wait will watch competitors take their audience. Tell them one call with you will give them more clarity than 6 months of guessing. Tell them to book now - not later, not tomorrow - now. The link is right below.\n\nUnder 450 words total. Plain paragraphs only - no bullet points, no headers, no markdown formatting. Write in a warm, direct, emotionally intelligent tone - like a world-class mentor who genuinely wants them to win and is frustrated watching them leave growth on the table.\n\nResults:\nSocial score: '+ss+'%\nRevenue health: '+rh+'% ('+rl+'% leaking)\n\nAnswers:\n'+sl;
  try{
    const auditAnswers=Object.entries(alab).map(([q,label])=>{const score=v[parseInt(q)];const level=score===0?'Critical gap':score===1?'Needs work':score===2?'Getting there':'Strong';return {area:bl[parseInt(q)],label:label,score:score,level:level};});
    const res=await fetch('https://obed-audit-proxy.obeethecreator.workers.dev',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({prompt:prompt,email:userEmail,name:userName,scores:{social:ss,leak:rl},answers:auditAnswers})});
    document.getElementById('loading-wrap').style.display='none';
    document.getElementById('r-content').classList.add('show');
    document.getElementById('ss').textContent=ss+'%';
    document.getElementById('sl').textContent=ss>=70?'Strong foundation':ss>=40?'Room to grow':'Needs work';
    document.getElementById('rs').textContent=rl+'%';
    document.getElementById('rl').textContent=rl>=50?'Critical leaks':rl>=30?'Moderate leaks':'Small leaks';
    const bEl=document.getElementById('bars');
    bEl.innerHTML=v.map((x,i)=>{const p=Math.round((x/3)*100);const c=p>=67?'#86EFAC':p>=34?'#E8A84A':'#F87171';return '<div class="b-row"><div class="b-label">'+bl[i]+'</div><div class="b-track"><div class="b-fill" style="width:0%;background:'+c+';" data-w="'+p+'%"></div></div><div class="b-val" style="color:'+c+';">'+p+'%</div></div>';}).join('');
    setTimeout(()=>{bEl.querySelectorAll('.b-fill').forEach(b=>b.style.width=b.dataset.w);},200);
    const aiEl=document.getElementById('ai-text');
    const data=await res.json();const txt=data.text||'Analysis unavailable.';
    aiEl.textContent=txt;
  }catch(err){
    document.getElementById('loading-wrap').style.display='none';
    document.getElementById('r-content').classList.add('show');
    document.getElementById('ss').textContent=ss+'%';
    document.getElementById('rs').textContent=rl+'%';
    const bEl=document.getElementById('bars');
    bEl.innerHTML=v.map((x,i)=>{const p=Math.round((x/3)*100);const c=p>=67?'#86EFAC':p>=34?'#E8A84A':'#F87171';return '<div class="b-row"><div class="b-label">'+bl[i]+'</div><div class="b-track"><div class="b-fill" style="width:0%;background:'+c+';" data-w="'+p+'%"></div></div><div class="b-val" style="color:'+c+';">'+p+'%</div></div>';}).join('');
    setTimeout(()=>{bEl.querySelectorAll('.b-fill').forEach(b=>b.style.width=b.dataset.w);},200);
    document.getElementById('err-box').style.display='block';
    document.getElementById('err-box').textContent='AI analysis unavailable right now. Your scores are shown above. Book a call for your full personalised audit.';
  }
}
</script>
