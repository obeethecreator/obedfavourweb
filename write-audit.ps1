$content = @"
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
description = "Free AI-powered growth audit for founders and businesses. Find out exactly where your brand is losing growth and revenue in 12 questions."
+++

<style>
.ga{font-family:inherit;max-width:680px;margin:0 auto;}
.ga-header{text-align:center;padding:2rem 0 1rem;}
.ga-title{font-size:28px;font-weight:700;margin-bottom:0.75rem;}
.ga-desc{font-size:15px;opacity:0.7;line-height:1.6;max-width:480px;margin:0 auto 0.5rem;}
.ga-tag{display:inline-flex;align-items:center;gap:6px;background:rgba(46,117,182,0.1);border:1px solid rgba(46,117,182,0.2);border-radius:20px;padding:4px 12px;font-size:12px;color:#2E75B6;margin-top:0.5rem;}
.prog-wrap{margin:1.5rem 0;}
.prog-bar{height:4px;background:rgba(255,255,255,0.1);border-radius:2px;}
.prog-fill{height:4px;background:#2E75B6;border-radius:2px;transition:width 0.4s ease;}
.prog-labels{display:flex;justify-content:space-between;margin-top:6px;}
.prog-label{font-size:11px;opacity:0.4;}
.step{display:none;}
.step.active{display:block;}
.section-badge{display:inline-flex;align-items:center;gap:8px;border-radius:6px;padding:5px 12px;font-size:12px;font-weight:600;margin-bottom:1rem;letter-spacing:0.04em;}
.badge-social{background:rgba(46,117,182,0.12);color:#2E75B6;}
.badge-revenue{background:rgba(186,117,23,0.12);color:#BA7517;}
.q-title{font-size:18px;font-weight:600;margin-bottom:0.4rem;line-height:1.4;}
.q-sub{font-size:13px;opacity:0.6;margin-bottom:1.5rem;line-height:1.5;}
.opts{display:flex;flex-direction:column;gap:8px;}
.opt{border:1px solid rgba(255,255,255,0.1);border-radius:8px;padding:13px 16px;cursor:pointer;font-size:14px;background:rgba(255,255,255,0.03);text-align:left;transition:all 0.15s;display:flex;justify-content:space-between;align-items:center;gap:8px;color:inherit;}
.opt:hover{border-color:rgba(46,117,182,0.4);background:rgba(46,117,182,0.06);}
.opt.selected{border:2px solid #2E75B6;background:rgba(46,117,182,0.12);}
.opt-tag{font-size:11px;font-weight:600;padding:2px 8px;border-radius:4px;white-space:nowrap;flex-shrink:0;}
.t-high{background:rgba(226,75,74,0.15);color:#E24B4A;}
.t-med{background:rgba(186,117,23,0.15);color:#BA7517;}
.t-low{background:rgba(99,153,34,0.15);color:#639922;}
.nav{display:flex;justify-content:space-between;align-items:center;margin-top:1.5rem;}
.btn-next{padding:11px 24px;background:#2E75B6;color:white;border:none;border-radius:8px;font-size:14px;font-weight:600;cursor:pointer;transition:background 0.15s;}
.btn-next:hover{background:#1A5EA8;}
.btn-next:disabled{opacity:0.3;cursor:not-allowed;}
.btn-back{padding:11px 16px;background:transparent;color:inherit;border:1px solid rgba(255,255,255,0.15);border-radius:8px;font-size:14px;cursor:pointer;opacity:0.7;}
.q-count{font-size:13px;opacity:0.4;}
.results{display:none;}
.results.active{display:block;}
.loading-box{text-align:center;padding:4rem 1rem;}
.loading-title{font-size:17px;font-weight:600;margin-bottom:0.5rem;}
.loading-sub{font-size:14px;opacity:0.5;margin-bottom:2rem;}
.loading-dots{display:flex;justify-content:center;gap:8px;}
.dot{width:10px;height:10px;border-radius:50%;background:#2E75B6;animation:pulse 1.2s ease-in-out infinite;}
.dot:nth-child(2){animation-delay:0.2s;}
.dot:nth-child(3){animation-delay:0.4s;}
@keyframes pulse{0%,100%{opacity:0.3;transform:scale(0.8);}50%{opacity:1;transform:scale(1.1);}}
.scores-grid{display:grid;grid-template-columns:1fr 1fr;gap:12px;margin-bottom:1.5rem;}
.score-card{border:1px solid rgba(255,255,255,0.1);border-radius:10px;padding:1.25rem;text-align:center;background:rgba(255,255,255,0.03);}
.score-card-label{font-size:11px;opacity:0.5;margin-bottom:0.5rem;letter-spacing:0.08em;text-transform:uppercase;}
.score-card-num{font-size:36px;font-weight:700;margin-bottom:0.25rem;}
.score-card-sub{font-size:12px;opacity:0.5;line-height:1.4;}
.breakdown-title{font-size:14px;opacity:0.5;letter-spacing:0.06em;text-transform:uppercase;margin-bottom:1rem;}
.bar-row{display:flex;align-items:center;gap:10px;margin-bottom:10px;}
.bar-label{font-size:13px;opacity:0.6;width:130px;flex-shrink:0;line-height:1.3;}
.bar-track{flex:1;height:6px;background:rgba(255,255,255,0.08);border-radius:3px;overflow:hidden;}
.bar-fill{height:6px;border-radius:3px;transition:width 1s ease;}
.bar-val{font-size:12px;font-weight:600;width:32px;text-align:right;}
.ai-report{margin:2rem 0;}
.ai-report-title{font-size:16px;font-weight:600;margin-bottom:1rem;display:flex;align-items:center;gap:8px;}
.ai-badge{font-size:11px;background:rgba(46,117,182,0.15);color:#2E75B6;padding:2px 8px;border-radius:4px;font-weight:600;}
.ai-content{border:1px solid rgba(46,117,182,0.2);border-radius:10px;padding:1.5rem;background:rgba(46,117,182,0.04);font-size:14px;line-height:1.9;white-space:pre-wrap;min-height:60px;}
.ai-content.streaming{border-color:#2E75B6;}
.audit-cta{background:linear-gradient(135deg,#0F1C2E 0%,#1A3A5C 100%);border-radius:12px;padding:2rem;text-align:center;margin-top:2rem;}
.audit-cta h3{font-size:18px;font-weight:700;color:white;margin-bottom:0.5rem;}
.audit-cta p{color:#A8C4E8;font-size:14px;margin-bottom:1.5rem;line-height:1.6;}
.audit-cta-btn{display:inline-block;background:#2E75B6;color:white;padding:14px 36px;border-radius:8px;font-size:15px;font-weight:600;text-decoration:none;border:none;cursor:pointer;}
.audit-cta-note{color:#4A7A9B;font-size:12px;margin-top:10px;}
.error-box{background:rgba(226,75,74,0.1);border:1px solid rgba(226,75,74,0.2);border-radius:8px;padding:1rem;font-size:14px;color:#E24B4A;margin-bottom:1rem;}
.divider-label{display:flex;align-items:center;gap:10px;margin:1.5rem 0 1.25rem;}
.divider-label span{font-size:12px;opacity:0.4;letter-spacing:0.08em;text-transform:uppercase;white-space:nowrap;}
.divider-label::before,.divider-label::after{content:'';flex:1;height:0.5px;background:rgba(255,255,255,0.1);}
@media(max-width:640px){.scores-grid{grid-template-columns:1fr;}.bar-label{width:100px;}.ga-title{font-size:22px;}}
</style>

<div class="ga">
  <div class="ga-header">
    <div class="ga-title">Free AI Growth Audit</div>
    <div class="ga-desc">12 questions. Claude analyses your specific answers and writes a personalised growth report — not generic advice.</div>
    <div class="ga-tag">Powered by Claude AI</div>
  </div>

  <div class="prog-wrap">
    <div class="prog-bar"><div class="prog-fill" id="prog" style="width:0%"></div></div>
    <div class="prog-labels">
      <span class="prog-label">Social media</span>
      <span class="prog-label">Revenue funnel</span>
      <span class="prog-label">AI analysis</span>
    </div>
  </div>

  <div class="step active" id="s0">
    <div class="section-badge badge-social">Social media audit — 1 of 7</div>
    <div class="q-title">How often does your brand post on social media?</div>
    <div class="q-sub">Consistency is the single biggest driver of organic growth.</div>
    <div class="opts">
      <button class="opt" data-q="0" data-val="0" data-label="Rarely — once a month or less"><span>Rarely — once a month or less</span><span class="opt-tag t-high">Critical gap</span></button>
      <button class="opt" data-q="0" data-val="1" data-label="A few times a month — inconsistent"><span>A few times a month — no real consistency</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="0" data-val="2" data-label="1-3 times per week — fairly regular"><span>1-3 times per week — fairly regular</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="0" data-val="3" data-label="Daily or near daily — very consistent"><span>Daily or near daily — very consistent</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><span class="q-count">1 / 12</span><button class="btn-next" id="n0" disabled onclick="next(0)">Next</button></div>
  </div>

  <div class="step" id="s1">
    <div class="section-badge badge-social">Social media audit — 2 of 7</div>
    <div class="q-title">Do you have a documented content strategy with clear pillars and goals?</div>
    <div class="q-sub">Strategy is what separates brands that grow from brands that just stay busy.</div>
    <div class="opts">
      <button class="opt" data-q="1" data-val="0" data-label="No strategy — post whatever feels relevant"><span>No — we post whatever feels relevant</span><span class="opt-tag t-high">Critical gap</span></button>
      <button class="opt" data-q="1" data-val="1" data-label="Some ideas but nothing documented"><span>Some ideas in our heads but nothing documented</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="1" data-val="2" data-label="Have a strategy but don't always follow it"><span>We have a strategy but don't always follow it</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="1" data-val="3" data-label="Documented strategy followed consistently"><span>Yes — documented and followed consistently</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(1)">Back</button><span class="q-count">2 / 12</span><button class="btn-next" id="n1" disabled onclick="next(1)">Next</button></div>
  </div>

  <div class="step" id="s2">
    <div class="section-badge badge-social">Social media audit — 3 of 7</div>
    <div class="q-title">Does your content actually convert — do followers DM, book, or buy?</div>
    <div class="q-sub">Likes without leads means your content is entertaining but not working.</div>
    <div class="opts">
      <button class="opt" data-q="2" data-val="0" data-label="Get likes but zero business from social"><span>We get likes but zero business from social</span><span class="opt-tag t-high">Critical gap</span></button>
      <button class="opt" data-q="2" data-val="1" data-label="Very occasional enquiries — not consistent"><span>Very occasional enquiries — not consistent</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="2" data-val="2" data-label="Get some leads but could be much better"><span>We get some leads but it could be much better</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="2" data-val="3" data-label="Social consistently drives leads and revenue"><span>Social consistently drives leads and revenue</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(2)">Back</button><span class="q-count">3 / 12</span><button class="btn-next" id="n2" disabled onclick="next(2)">Next</button></div>
  </div>

  <div class="step" id="s3">
    <div class="section-badge badge-social">Social media audit — 4 of 7</div>
    <div class="q-title">Are you using short-form video as part of your content mix?</div>
    <div class="q-sub">Reels, Shorts, and TikTok have the highest organic reach of any format right now.</div>
    <div class="opts">
      <button class="opt" data-q="3" data-val="0" data-label="No video — only static images or text"><span>No — only static images or text posts</span><span class="opt-tag t-high">Missing out</span></button>
      <button class="opt" data-q="3" data-val="1" data-label="Tried video a few times but not consistent"><span>Tried it a few times but not consistent</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="3" data-val="2" data-label="Post video occasionally"><span>We post video occasionally</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="3" data-val="3" data-label="Video is a core part of our strategy"><span>Video is a core part of our strategy</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(3)">Back</button><span class="q-count">4 / 12</span><button class="btn-next" id="n3" disabled onclick="next(3)">Next</button></div>
  </div>

  <div class="step" id="s4">
    <div class="section-badge badge-social">Social media audit — 5 of 7</div>
    <div class="q-title">Do you track analytics and make decisions based on data?</div>
    <div class="q-sub">The brands that grow fastest are the ones that measure what actually matters.</div>
    <div class="opts">
      <button class="opt" data-q="4" data-val="0" data-label="Never look at analytics"><span>We never look at analytics</span><span class="opt-tag t-high">Critical gap</span></button>
      <button class="opt" data-q="4" data-val="1" data-label="Check follower count occasionally"><span>We check follower count occasionally</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="4" data-val="2" data-label="Track some metrics but unsure what to do with them"><span>Track some metrics but unsure what to do with them</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="4" data-val="3" data-label="Track key metrics and adjust strategy weekly"><span>Track key metrics and adjust strategy weekly</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(4)">Back</button><span class="q-count">5 / 12</span><button class="btn-next" id="n4" disabled onclick="next(4)">Next</button></div>
  </div>

  <div class="step" id="s5">
    <div class="section-badge badge-social">Social media audit — 6 of 7</div>
    <div class="q-title">Do you repurpose content across multiple platforms?</div>
    <div class="q-sub">One piece of content should become many. If it doesn't, you are working too hard for too little output.</div>
    <div class="opts">
      <button class="opt" data-q="5" data-val="0" data-label="Create separate content for each platform — no repurposing"><span>No — we create separate content for each platform</span><span class="opt-tag t-high">High effort, low output</span></button>
      <button class="opt" data-q="5" data-val="1" data-label="Sometimes repurpose but no system"><span>Sometimes, but no system in place</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="5" data-val="2" data-label="Repurpose occasionally"><span>We repurpose occasionally</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="5" data-val="3" data-label="Full repurposing system in place"><span>We have a full repurposing system</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(5)">Back</button><span class="q-count">6 / 12</span><button class="btn-next" id="n5" disabled onclick="next(5)">Next</button></div>
  </div>

  <div class="step" id="s6">
    <div class="section-badge badge-social">Social media audit — 7 of 7</div>
    <div class="q-title">Do you have a content calendar planned at least 2 weeks ahead?</div>
    <div class="q-sub">Planning ahead is what makes consistency possible when life gets busy.</div>
    <div class="opts">
      <button class="opt" data-q="6" data-val="0" data-label="No planning — post when we remember"><span>No planning — we post when we remember</span><span class="opt-tag t-high">Critical gap</span></button>
      <button class="opt" data-q="6" data-val="1" data-label="Plan loosely but nothing formal"><span>We plan loosely but nothing formal</span><span class="opt-tag t-high">Needs work</span></button>
      <button class="opt" data-q="6" data-val="2" data-label="Have a calendar but don't always follow it"><span>We have a calendar but don't always follow it</span><span class="opt-tag t-med">Getting there</span></button>
      <button class="opt" data-q="6" data-val="3" data-label="30-day content calendar planned in advance"><span>Yes — 30-day content calendar planned in advance</span><span class="opt-tag t-low">Strong</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(6)">Back</button><span class="q-count">7 / 12</span><button class="btn-next" id="n6" disabled onclick="next(6)">Next — Revenue audit</button></div>
  </div>

  <div class="step" id="s7">
    <div class="divider-label"><span>Now: Revenue funnel audit</span></div>
    <div class="section-badge badge-revenue">Revenue funnel — 1 of 5</div>
    <div class="q-title">How do new customers discover your brand?</div>
    <div class="q-sub">Awareness is the top of your revenue funnel. No awareness means no pipeline.</div>
    <div class="opts">
      <button class="opt" data-q="7" data-val="0" data-label="Mostly word of mouth — no active marketing"><span>Mostly word of mouth — no active marketing</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="7" data-val="1" data-label="Some social but no consistent strategy"><span>Some social but no consistent strategy</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="7" data-val="2" data-label="Consistent social plus some SEO or paid"><span>Consistent social + some SEO or paid</span><span class="opt-tag t-med">Small leak</span></button>
      <button class="opt" data-q="7" data-val="3" data-label="Multi-channel — social, SEO, ads, referrals"><span>Multi-channel — social, SEO, ads, referrals</span><span class="opt-tag t-low">Healthy</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(7)">Back</button><span class="q-count">8 / 12</span><button class="btn-next" id="n7" disabled onclick="next(7)">Next</button></div>
  </div>

  <div class="step" id="s8">
    <div class="section-badge badge-revenue">Revenue funnel — 2 of 5</div>
    <div class="q-title">When someone finds you, do they take a clear next step?</div>
    <div class="q-sub">Every visitor that leaves without acting is lost revenue.</div>
    <div class="opts">
      <button class="opt" data-q="8" data-val="0" data-label="No clear CTA on content or website"><span>No clear CTA on our content or website</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="8" data-val="1" data-label="Have a website but it doesn't convert well"><span>We have a website but it does not convert well</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="8" data-val="2" data-label="Get some enquiries but conversion is inconsistent"><span>Some enquiries but conversion is inconsistent</span><span class="opt-tag t-med">Small leak</span></button>
      <button class="opt" data-q="8" data-val="3" data-label="Clear CTAs, landing pages, and booking system in place"><span>Clear CTAs, landing pages, booking system in place</span><span class="opt-tag t-low">Healthy</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(8)">Back</button><span class="q-count">9 / 12</span><button class="btn-next" id="n8" disabled onclick="next(8)">Next</button></div>
  </div>

  <div class="step" id="s9">
    <div class="section-badge badge-revenue">Revenue funnel — 3 of 5</div>
    <div class="q-title">How quickly does someone experience value after enquiring?</div>
    <div class="q-sub">The window between interest and decision is short. Slow follow-up loses warm leads.</div>
    <div class="opts">
      <button class="opt" data-q="9" data-val="0" data-label="No system — people enquire and just wait"><span>No system — people enquire and just wait</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="9" data-val="1" data-label="Manual follow-up — slow and inconsistent"><span>Manual follow-up — slow and inconsistent</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="9" data-val="2" data-label="Some automation but gaps in the journey"><span>Some automation but gaps in the journey</span><span class="opt-tag t-med">Small leak</span></button>
      <button class="opt" data-q="9" data-val="3" data-label="Fast automated onboarding — value within 24 hours"><span>Fast automated onboarding — value within 24hrs</span><span class="opt-tag t-low">Healthy</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(9)">Back</button><span class="q-count">10 / 12</span><button class="btn-next" id="n9" disabled onclick="next(9)">Next</button></div>
  </div>

  <div class="step" id="s10">
    <div class="section-badge badge-revenue">Revenue funnel — 4 of 5</div>
    <div class="q-title">Do you have an active retention system to keep customers coming back?</div>
    <div class="q-sub">Acquiring a new customer costs 5x more than retaining one.</div>
    <div class="opts">
      <button class="opt" data-q="10" data-val="0" data-label="No retention strategy at all"><span>No retention strategy at all</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="10" data-val="1" data-label="Occasionally check in but no system"><span>We occasionally check in but no system</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="10" data-val="2" data-label="Email marketing but not consistent"><span>Email marketing but not consistent</span><span class="opt-tag t-med">Small leak</span></button>
      <button class="opt" data-q="10" data-val="3" data-label="Active retention — emails, community, regular touchpoints"><span>Active retention — emails, community, touchpoints</span><span class="opt-tag t-low">Healthy</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(10)">Back</button><span class="q-count">11 / 12</span><button class="btn-next" id="n10" disabled onclick="next(10)">Next</button></div>
  </div>

  <div class="step" id="s11">
    <div class="section-badge badge-revenue">Revenue funnel — 5 of 5</div>
    <div class="q-title">Do your happy customers systematically refer others?</div>
    <div class="q-sub">Referral revenue is the most profitable growth channel. If it is accidental, you are leaving money on the table.</div>
    <div class="opts">
      <button class="opt" data-q="11" data-val="0" data-label="Never ask for referrals or reviews"><span>We never ask for referrals or reviews</span><span class="opt-tag t-high">Revenue leak</span></button>
      <button class="opt" data-q="11" data-val="1" data-label="Sometimes get referrals but it is accidental"><span>Sometimes clients refer us but it is accidental</span><span class="opt-tag t-med">Small leak</span></button>
      <button class="opt" data-q="11" data-val="2" data-label="Ask occasionally but no formal referral system"><span>We ask occasionally but no formal system</span><span class="opt-tag t-med">Small leak</span></button>
      <button class="opt" data-q="11" data-val="3" data-label="Active referral programme — incentivised and systematic"><span>Active referral programme — systematic</span><span class="opt-tag t-low">Healthy</span></button>
    </div>
    <div class="nav"><button class="btn-back" onclick="back(11)">Back</button><span class="q-count">12 / 12</span><button class="btn-next" id="n11" disabled onclick="runAudit()">Get my AI audit</button></div>
  </div>

  <div class="results" id="results">
    <div id="loading-box" class="loading-box">
      <div class="loading-title">Claude is analysing your answers...</div>
      <div class="loading-sub">Writing your personalised growth report</div>
      <div class="loading-dots"><div class="dot"></div><div class="dot"></div><div class="dot"></div></div>
    </div>
    <div id="report-content" style="display:none;">
      <div class="scores-grid">
        <div class="score-card">
          <div class="score-card-label">Social score</div>
          <div class="score-card-num" id="social-score" style="color:#2E75B6;">-</div>
          <div class="score-card-sub" id="social-label"></div>
        </div>
        <div class="score-card">
          <div class="score-card-label">Revenue leaking</div>
          <div class="score-card-num" id="revenue-score" style="color:#E24B4A;">-</div>
          <div class="score-card-sub" id="revenue-label"></div>
        </div>
      </div>
      <div style="margin-bottom:1.5rem;">
        <div class="breakdown-title">Score breakdown</div>
        <div id="bars"></div>
      </div>
      <div class="ai-report">
        <div class="ai-report-title">Your personalised growth audit <span class="ai-badge">by Claude AI</span></div>
        <div class="ai-content" id="ai-content"></div>
      </div>
      <div id="error-box" class="error-box" style="display:none;"></div>
      <div class="audit-cta">
        <h3>Ready to fix these gaps with expert help?</h3>
        <p>Book a free 30-minute strategy call with Obed Favour. We will walk through your specific results and build a clear action plan for your brand.</p>
        <a href="https://calendly.com/obeethecreator/30min" target="_blank" class="audit-cta-btn">Book a free strategy call</a>
        <div class="audit-cta-note">30 min — no obligation — real advice</div>
      </div>
      <div style="text-align:center;margin-top:1.5rem;">
        <button class="btn-back" onclick="restart()">Start over</button>
      </div>
    </div>
  </div>
</div>

<script>
const answers={};const answerLabels={};
const barLabels=['Consistency','Content strategy','Conversion','Short-form video','Analytics','Repurposing','Content planning','Awareness','Acquisition','Activation','Retention','Referrals'];
document.querySelectorAll('.opt').forEach(btn=>{btn.addEventListener('click',function(){const q=this.dataset.q;document.querySelectorAll('[data-q="'+q+'"]').forEach(b=>b.classList.remove('selected'));this.classList.add('selected');answers[q]=parseInt(this.dataset.val);answerLabels[q]=this.dataset.label;document.getElementById('n'+q).disabled=false;});});
function next(q){document.getElementById('s'+q).classList.remove('active');document.getElementById('s'+(q+1)).classList.add('active');document.getElementById('prog').style.width=Math.round(((q+2)/13)*100)+'%';}
function back(q){document.getElementById('s'+q).classList.remove('active');document.getElementById('s'+(q-1)).classList.add('active');document.getElementById('prog').style.width=Math.round((q/13)*100)+'%';}
function restart(){Object.keys(answers).forEach(k=>delete answers[k]);Object.keys(answerLabels).forEach(k=>delete answerLabels[k]);document.querySelectorAll('.opt').forEach(b=>b.classList.remove('selected'));document.querySelectorAll('.btn-next').forEach(b=>b.disabled=true);document.getElementById('results').classList.remove('active');document.getElementById('loading-box').style.display='block';document.getElementById('report-content').style.display='none';document.getElementById('ai-content').textContent='';document.getElementById('s0').classList.add('active');document.getElementById('prog').style.width='0%';}
async function runAudit(){
  document.getElementById('s11').classList.remove('active');
  document.getElementById('results').classList.add('active');
  document.getElementById('prog').style.width='100%';
  const vals=Array.from({length:12},(_,i)=>answers[i]||0);
  const socialScore=Math.round((vals.slice(0,7).reduce((a,b)=>a+b,0)/21)*100);
  const revenueHealth=Math.round((vals.slice(7).reduce((a,b)=>a+b,0)/15)*100);
  const revenueLeak=100-revenueHealth;
  const summaryLines=Object.entries(answerLabels).map(([q,label])=>{const area=barLabels[parseInt(q)];const score=vals[parseInt(q)];const level=score===0?'Critical gap':score===1?'Needs work':score===2?'Getting there':'Strong';return '- '+area+': '+label+' ('+level+', score '+score+'/3)';}).join('\n');
  const prompt='You are Obed Favour, a growth marketer and AI automation expert. A founder or business owner has just completed a 12-question growth audit on your website. Their answers are below.\n\nWrite them a personalised growth audit report. Be specific, direct, and genuinely useful. Write as if you are speaking directly to them — warm, expert, honest. Do not be generic. Reference their specific answers and scores.\n\nStructure your report like this:\n1. A 2-3 sentence personalised summary of their overall growth situation based on their specific combination of answers\n2. Their 3 biggest growth gaps — explained specifically based on what they answered, with one concrete action for each\n3. One thing they are doing well (even if small) — always find something positive\n4. A closing sentence that naturally leads them to book a strategy call with you\n\nKeep it under 400 words. Use plain paragraphs — no bullet points, no headers, no markdown. Write in a warm, direct, expert tone.\n\nTheir audit results:\nSocial media score: '+socialScore+'%\nRevenue funnel health: '+revenueHealth+'% ('+revenueLeak+'% leaking)\n\nTheir answers:\n'+summaryLines;
  try{
    const response=await fetch('https://api.anthropic.com/v1/messages',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify({model:'claude-sonnet-4-20250514',max_tokens:1000,stream:true,messages:[{role:'user',content:prompt}]})});
    document.getElementById('loading-box').style.display='none';
    document.getElementById('report-content').style.display='block';
    document.getElementById('social-score').textContent=socialScore+'%';
    document.getElementById('social-label').textContent=socialScore>=70?'Strong foundation':socialScore>=40?'Room to grow':'Needs work';
    document.getElementById('revenue-score').textContent=revenueLeak+'%';
    document.getElementById('revenue-label').textContent=revenueLeak>=50?'Critical leaks':revenueLeak>=30?'Moderate leaks':'Small leaks';
    const barsEl=document.getElementById('bars');
    barsEl.innerHTML=vals.map((v,i)=>{const pct=Math.round((v/3)*100);const color=pct>=67?'#639922':pct>=34?'#BA7517':'#E24B4A';return '<div class="bar-row"><div class="bar-label">'+barLabels[i]+'</div><div class="bar-track"><div class="bar-fill" style="width:0%;background:'+color+';" data-w="'+pct+'%"></div></div><div class="bar-val" style="color:'+color+';">'+pct+'%</div></div>';}).join('');
    setTimeout(()=>{barsEl.querySelectorAll('.bar-fill').forEach(b=>b.style.width=b.dataset.w);},200);
    const aiEl=document.getElementById('ai-content');
    aiEl.classList.add('streaming');
    const reader=response.body.getReader();const decoder=new TextDecoder();let text='';
    while(true){const{done,value}=await reader.read();if(done)break;const chunk=decoder.decode(value);const lines=chunk.split('\n').filter(l=>l.startsWith('data: '));for(const line of lines){const data=line.slice(6);if(data==='[DONE]')break;try{const parsed=JSON.parse(data);if(parsed.type==='content_block_delta'&&parsed.delta?.text){text+=parsed.delta.text;aiEl.textContent=text;}}catch(e){}}}
    aiEl.classList.remove('streaming');
  }catch(err){
    document.getElementById('loading-box').style.display='none';
    document.getElementById('report-content').style.display='block';
    document.getElementById('social-score').textContent=socialScore+'%';
    document.getElementById('revenue-score').textContent=revenueLeak+'%';
    const barsEl=document.getElementById('bars');
    barsEl.innerHTML=vals.map((v,i)=>{const pct=Math.round((v/3)*100);const color=pct>=67?'#639922':pct>=34?'#BA7517':'#E24B4A';return '<div class="bar-row"><div class="bar-label">'+barLabels[i]+'</div><div class="bar-track"><div class="bar-fill" style="width:0%;background:'+color+';" data-w="'+pct+'%"></div></div><div class="bar-val" style="color:'+color+';">'+pct+'%</div></div>';}).join('');
    setTimeout(()=>{barsEl.querySelectorAll('.bar-fill').forEach(b=>b.style.width=b.dataset.w);},200);
    document.getElementById('error-box').style.display='block';
    document.getElementById('error-box').textContent='The AI analysis could not load right now. Your scores are shown above. Book a call for a full personalised audit.';
  }
}
</script>
"@
[System.IO.File]::WriteAllText("$PWD\content\audit.md", $content, [System.Text.Encoding]::UTF8)
Write-Host "Done"
