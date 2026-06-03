+++
title = "From Zero to Live"
date = '2026-05-31T10:00:00+01:00'
draft = false
slug = "guide"
showDate = false
showReadingTime = false
showAuthor = false
showBreadcrumbs = false
showTitle = false
showWordCount = false
description = "Free guide: Build your professional website this weekend. No developer. No code. Complete step-by-step."
+++

<style>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=DM+Sans:wght@300;400;500&display=swap');
*{box-sizing:border-box;}
article,main,.prose,.max-w-prose,.content{max-width:100%!important;padding:0!important;}
.lp{font-family:'DM Sans',sans-serif;background:#0a1628;color:#f0ede8;position:fixed;top:0;left:0;width:100vw;height:100vh;overflow-y:auto;z-index:9998;padding:60px 20px 40px;}
.lp-c{max-width:560px;margin:0 auto;}
.lp-badge{display:inline-block;background:rgba(46,117,182,0.18);border:1px solid rgba(46,117,182,0.4);color:#7eb8f0;font-size:11px;letter-spacing:2px;text-transform:uppercase;padding:6px 16px;border-radius:20px;margin-bottom:24px;}
.lp h1{font-family:'Playfair Display',serif;font-size:clamp(28px,6vw,44px);font-weight:700;line-height:1.2;color:#f0ede8;margin:0 0 18px;}
.lp h1 span{color:#5b9bd5;}
.lp-sub{font-size:16px;font-weight:300;color:rgba(240,237,232,0.6);line-height:1.7;margin:0 0 36px;}
.lp-stats{display:flex;gap:28px;margin:0 0 48px;flex-wrap:wrap;}
.lp-stat-n{font-family:'Playfair Display',serif;font-size:26px;font-weight:700;color:#5b9bd5;display:block;}
.lp-stat-l{font-size:11px;color:rgba(240,237,232,0.4);letter-spacing:1px;text-transform:uppercase;}
.lp-box{background:rgba(255,255,255,0.04);border:1px solid rgba(255,255,255,0.1);border-radius:16px;padding:32px 28px;margin:0 0 52px;overflow:hidden;width:100%;}
.lp-box-t{font-family:'Playfair Display',serif;font-size:20px;color:#f0ede8;margin:0 0 6px;}
.lp-box-s{font-size:13px;color:rgba(240,237,232,0.4);margin:0 0 22px;}
.lp input[type=text],.lp input[type=email]{width:100%;background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.12);border-radius:10px;padding:13px 15px;font-family:'DM Sans',sans-serif;font-size:15px;color:#f0ede8;margin:0 0 11px;outline:none;display:block;}
.lp input[type=text]::placeholder,.lp input[type=email]::placeholder{color:rgba(240,237,232,0.28);}
.lp input[type=text]:focus,.lp input[type=email]:focus{border-color:rgba(91,155,213,0.5);}
.lp-btn{width:100%;background:#2e75b6;border:none;border-radius:10px;padding:14px;font-family:'DM Sans',sans-serif;font-size:15px;font-weight:500;color:#fff;cursor:pointer;margin:0 0 14px;display:block;}
.lp-btn:hover{background:#3a85c8;}
.lp-gdpr{display:flex;gap:10px;align-items:flex-start;width:100%;overflow:hidden;}
.lp-gdpr input{margin-top:3px;flex-shrink:0;accent-color:#2e75b6;width:15px;height:15px;min-width:15px;cursor:pointer;}
.lp-gdpr label{font-size:12px;color:rgba(240,237,232,0.35);line-height:1.6;cursor:pointer;flex:1;min-width:0;word-wrap:break-word;overflow-wrap:break-word;}
.lp-gdpr a{color:rgba(91,155,213,0.6);text-decoration:none;}
.lp-label{font-size:11px;letter-spacing:2px;text-transform:uppercase;color:#5b9bd5;margin:0 0 14px;display:block;}
.lp-stitle{font-family:'Playfair Display',serif;font-size:22px;color:#f0ede8;margin:0 0 24px;}
.lp-grid{display:grid;grid-template-columns:1fr 1fr;gap:10px;margin:0 0 52px;}
@media(max-width:460px){.lp-grid{grid-template-columns:1fr;}}
.lp-card{background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.07);border-radius:10px;padding:14px 15px;}
.lp-card-n{font-size:10px;color:#5b9bd5;letter-spacing:1px;text-transform:uppercase;margin:0 0 4px;}
.lp-card-t{font-size:13px;color:rgba(240,237,232,0.75);line-height:1.4;margin:0;}
.lp-list{list-style:none;padding:0;margin:0 0 52px;}
.lp-list li{padding:10px 0;border-bottom:1px solid rgba(255,255,255,0.06);font-size:14px;color:rgba(240,237,232,0.65);display:flex;align-items:flex-start;gap:10px;line-height:1.5;}
.lp-list li::before{content:'';width:6px;height:6px;min-width:6px;border-radius:50%;background:#5b9bd5;margin-top:7px;}
.lp-author{display:flex;gap:18px;align-items:flex-start;margin:0 0 52px;}
.lp-av{width:50px;height:50px;min-width:50px;border-radius:50%;background:#2e75b6;display:flex;align-items:center;justify-content:center;font-family:'Playfair Display',serif;font-size:17px;color:#fff;font-weight:700;}
.lp-an{font-weight:500;color:#f0ede8;font-size:15px;margin:0 0 3px;}
.lp-ar{font-size:12px;color:#5b9bd5;margin:0 0 8px;}
.lp-ab{font-size:13px;color:rgba(240,237,232,0.5);line-height:1.7;margin:0;}
.lp-footer{border-top:1px solid rgba(255,255,255,0.06);padding:24px 0 0;text-align:center;font-size:11px;color:rgba(240,237,232,0.28);}
.lp-footer a{color:rgba(91,155,213,0.5);text-decoration:none;}
.lp-ok{display:none;text-align:center;padding:20px 0;}
.lp-ok-i{font-size:36px;margin:0 0 12px;}
.lp-ok-t{font-family:'Playfair Display',serif;font-size:20px;color:#f0ede8;margin:0 0 8px;}
.lp-ok-s{font-size:13px;color:rgba(240,237,232,0.45);line-height:1.6;margin:0;}
@media(max-width:600px){
  .lp{padding:40px 16px 40px;}
  .lp-c{width:100%;}
  .lp h1{font-size:28px;}
  .lp-sub{font-size:15px;}
  .lp-stats{gap:16px;}
  .lp-stat-n{font-size:22px;}
  .lp-box{padding:24px 18px;}
  .lp input[type=text],.lp input[type=email]{font-size:16px;padding:13px 14px;}
  .lp-btn{font-size:15px;padding:14px;}
  .lp-gdpr{flex-direction:row;gap:10px;align-items:flex-start;}
  .lp-gdpr input{width:18px;height:18px;margin-top:2px;flex-shrink:0;}
  .lp-gdpr label{font-size:12px;width:calc(100% - 28px);display:block;}
  .lp-grid{grid-template-columns:1fr;}
  .lp-for-list li{font-size:13px;}
  .lp-about{flex-direction:row;gap:14px;}
  .lp-ab{font-size:13px;}
  .lp-section-title{font-size:20px;}
}
</style>

<div class="lp">
<div class="lp-c">

<span class="lp-badge">Free Download</span>
<h1>From Zero to Live.<br><span>Build your professional website</span> this weekend.</h1>
<p class="lp-sub">The complete step-by-step guide for professionals who want a real website without paying a developer or learning to code.</p>

<div class="lp-stats">
  <div><span class="lp-stat-n">10</span><span class="lp-stat-l">Chapters</span></div>
  <div><span class="lp-stat-n">35</span><span class="lp-stat-l">Terms explained</span></div>
  <div><span class="lp-stat-n">15</span><span class="lp-stat-l">Errors fixed</span></div>
  <div><span class="lp-stat-n">$0</span><span class="lp-stat-l">To follow</span></div>
</div>

<div class="lp-box">
  <div id="lp-form">
    <p class="lp-box-t">Get the free guide</p>
    <p class="lp-box-s">Drop your details and the PDF lands in your inbox instantly.</p>
    <input type="text" id="lp-name" placeholder="Your first name" />
    <input type="email" id="lp-email" placeholder="Your email address" />
    <button class="lp-btn" onclick="lpGo()">Send me the guide</button>
    <div class="lp-gdpr">
      <input type="checkbox" id="lp-ok" />
      <label for="lp-ok">I agree to receive the guide and occasional insights from Obed Favour. No spam. Unsubscribe anytime. <a href="/privacy">Privacy Policy</a>.</label>
    </div>
  </div>
  <div class="lp-ok" id="lp-done">
    <div class="lp-ok-i">✉️</div>
    <p class="lp-ok-t">Check your inbox.</p>
    <p class="lp-ok-s">Your guide is on its way. If you do not see it in 2 minutes, check your spam folder and mark it as Not Spam.</p>
  </div>
</div>

<span class="lp-label">What is inside</span>
<p class="lp-stitle">10 chapters. Everything you need.</p>
<div class="lp-grid">
  <div class="lp-card"><p class="lp-card-n">Chapter 1</p><p class="lp-card-t">Installing your tools in 30 minutes</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 2</p><p class="lp-card-t">Creating and deploying your first site</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 3</p><p class="lp-card-t">Connecting your custom domain</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 4</p><p class="lp-card-t">Building your pages from scratch</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 5</p><p class="lp-card-t">Setting up your contact form and booking link</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 6</p><p class="lp-card-t">Google Analytics and Search Console</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 7</p><p class="lp-card-t">Making it look great on mobile</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 8</p><p class="lp-card-t">Writing content that converts visitors</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 9</p><p class="lp-card-t">35-term plain English glossary</p></div>
  <div class="lp-card"><p class="lp-card-n">Chapter 10</p><p class="lp-card-t">15 common errors and exact fixes</p></div>
</div>

<span class="lp-label">This guide is for you if</span>
<p class="lp-stitle">Sound familiar?</p>
<ul class="lp-list">
  <li>You are a consultant, coach, or freelancer without a professional website</li>
  <li>You have been quoted $3,000 or more by a developer and want to build it yourself</li>
  <li>You tried Wix or Squarespace and felt limited by the templates</li>
  <li>You want a fast, Google-indexed website on your own domain</li>
  <li>You have zero technical background but are willing to follow steps</li>
  <li>You want to own your digital presence completely, not rent it</li>
</ul>

<div class="lp-author">
  <div class="lp-av">OF</div>
  <div>
    <p class="lp-an">Obed Favour Chukwuemeka</p>
    <p class="lp-ar">Growth Marketer & AI Automation Expert, Lagos</p>
    <p class="lp-ab">I am a growth marketer, not a developer. I built obedfavour.com in a weekend using only free tools and a lot of Googling. I documented every step, every error, and every fix so you do not have to spend four days doing what took me two.</p>
  </div>
</div>

<div class="lp-footer">
  Obed Favour Chukwuemeka &nbsp;·&nbsp; Lagos, Nigeria &nbsp;·&nbsp; <a href="/privacy">Privacy Policy</a>
</div>

</div>
</div>

<script>
function lpGo(){
  var n=document.getElementById('lp-name').value.trim();
  var e=document.getElementById('lp-email').value.trim();
  var c=document.getElementById('lp-ok').checked;
  if(!n){alert('Please enter your first name.');return;}
  if(!e||!e.includes('@')){alert('Please enter a valid email address.');return;}
  if(!c){alert('Please tick the consent box to receive the guide.');return;}
  var b=document.querySelector('.lp-btn');
  b.textContent='Sending...';b.disabled=true;
  fetch('https://obed-audit-proxy.obeethecreator.workers.dev/subscribe',{
    method:'POST',
    headers:{'Content-Type':'application/json'},
    body:JSON.stringify({email:e,name:n})
  }).then(function(){
    document.getElementById('lp-form').style.display='none';
    document.getElementById('lp-done').style.display='block';
  }).catch(function(){
    document.getElementById('lp-form').style.display='none';
    document.getElementById('lp-done').style.display='block';
  });
}
</script>
