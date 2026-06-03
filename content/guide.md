+++
title = "From Zero to Live"
date = '2026-05-31T10:00:00+01:00'
draft = false
slug = "guide"
showDate = false
showReadingTime = false
showAuthor = false
showBreadcrumbs = false
description = "Free guide: Build your professional website this weekend. No developer. No code. Complete step-by-step."
+++

<style>
@import url('https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&family=DM+Sans:wght@300;400;500&display=swap');
article,main,.prose,.max-w-prose,.content,#single-content{max-width:100%!important;width:100%!important;padding:0!important;margin:0!important;}
*{box-sizing:border-box;}
.lp-wrap{font-family:'DM Sans',sans-serif;background:#0a1628;color:#f0ede8;width:100vw;display:block;padding:0;position:relative;left:50%;right:50%;margin-left:-50vw;margin-right:-50vw;}
.lp-inner{max-width:600px;margin:0 auto;padding:60px 24px 40px;}
.lp-badge{display:inline-block;background:rgba(46,117,182,0.18);border:1px solid rgba(46,117,182,0.4);color:#7eb8f0;font-size:11px;letter-spacing:2px;text-transform:uppercase;padding:6px 16px;border-radius:20px;margin-bottom:24px;}
.lp-h1{font-family:'Playfair Display',serif;font-size:clamp(28px,5vw,44px);font-weight:700;line-height:1.2;color:#f0ede8;margin:0 0 18px;}
.lp-h1 span{color:#5b9bd5;}
.lp-sub{font-size:16px;font-weight:300;color:rgba(240,237,232,0.6);line-height:1.7;margin:0 0 36px;}
.lp-proof{display:flex;gap:24px;margin-bottom:48px;flex-wrap:wrap;}
.lp-stat-n{font-family:'Playfair Display',serif;font-size:24px;font-weight:700;color:#5b9bd5;}
.lp-stat-l{font-size:11px;color:rgba(240,237,232,0.45);letter-spacing:1px;text-transform:uppercase;margin-top:2px;}
.lp-form-wrap{background:rgba(255,255,255,0.04);border:1px solid rgba(255,255,255,0.1);border-radius:16px;padding:32px 28px;margin-bottom:52px;}
.lp-form-title{font-family:'Playfair Display',serif;font-size:20px;color:#f0ede8;margin:0 0 6px;}
.lp-form-sub{font-size:13px;color:rgba(240,237,232,0.45);margin:0 0 22px;}
.lp-input{width:100%;background:rgba(255,255,255,0.06);border:1px solid rgba(255,255,255,0.12);border-radius:10px;padding:13px 15px;font-family:'DM Sans',sans-serif;font-size:15px;color:#f0ede8;margin-bottom:11px;outline:none;transition:border 0.2s;display:block;}
.lp-input::placeholder{color:rgba(240,237,232,0.28);}
.lp-input:focus{border-color:rgba(91,155,213,0.5);}
.lp-btn{width:100%;background:#2e75b6;border:none;border-radius:10px;padding:14px;font-family:'DM Sans',sans-serif;font-size:15px;font-weight:500;color:#fff;cursor:pointer;margin-bottom:14px;display:block;}
.lp-btn:hover{background:#3a85c8;}
.lp-consent{display:flex;gap:10px;align-items:flex-start;}
.lp-consent input{margin-top:3px;accent-color:#2e75b6;flex-shrink:0;cursor:pointer;width:16px;height:16px;}
.lp-consent label{font-size:12px;color:rgba(240,237,232,0.38);line-height:1.6;cursor:pointer;}
.lp-consent a{color:rgba(91,155,213,0.7);text-decoration:none;}
.lp-section-label{font-size:11px;letter-spacing:2px;text-transform:uppercase;color:#5b9bd5;margin:0 0 14px;}
.lp-section-title{font-family:'Playfair Display',serif;font-size:22px;color:#f0ede8;margin:0 0 24px;}
.lp-chapters{display:grid;grid-template-columns:1fr 1fr;gap:10px;margin-bottom:52px;}
@media(max-width:480px){.lp-chapters{grid-template-columns:1fr;}}
.lp-chapter{background:rgba(255,255,255,0.03);border:1px solid rgba(255,255,255,0.07);border-radius:10px;padding:14px 15px;}
.lp-chapter-n{font-size:10px;color:#5b9bd5;letter-spacing:1px;text-transform:uppercase;margin-bottom:4px;}
.lp-chapter-t{font-size:13px;color:rgba(240,237,232,0.75);line-height:1.4;}
.lp-for-list{list-style:none;padding:0;margin:0 0 52px;}
.lp-for-list li{padding:10px 0;border-bottom:1px solid rgba(255,255,255,0.06);font-size:14px;color:rgba(240,237,232,0.65);display:flex;align-items:flex-start;gap:10px;line-height:1.5;}
.lp-for-list li::before{content:'';width:6px;height:6px;border-radius:50%;background:#5b9bd5;flex-shrink:0;margin-top:7px;}
.lp-about{display:flex;gap:18px;align-items:flex-start;margin-bottom:52px;}
.lp-avatar{width:50px;height:50px;border-radius:50%;background:#2e75b6;flex-shrink:0;display:flex;align-items:center;justify-content:center;font-family:'Playfair Display',serif;font-size:17px;color:#fff;font-weight:700;}
.lp-about-name{font-weight:500;color:#f0ede8;font-size:15px;margin:0 0 3px;}
.lp-about-role{font-size:12px;color:#5b9bd5;margin:0 0 8px;}
.lp-about-bio{font-size:13px;color:rgba(240,237,232,0.5);line-height:1.7;margin:0;}
.lp-footer{border-top:1px solid rgba(255,255,255,0.06);padding:24px 0;text-align:center;font-size:11px;color:rgba(240,237,232,0.28);}
.lp-footer a{color:rgba(91,155,213,0.5);text-decoration:none;}
.lp-success{display:none;text-align:center;padding:20px 0;}
.lp-success-icon{font-size:36px;margin-bottom:12px;}
.lp-success-t{font-family:'Playfair Display',serif;font-size:20px;color:#f0ede8;margin:0 0 8px;}
.lp-success-s{font-size:13px;color:rgba(240,237,232,0.45);line-height:1.6;margin:0;}
</style>

<div class="lp-wrap">
<div class="lp-inner">

<div class="lp-badge">Free Download</div>
<h1 class="lp-h1">From Zero to Live.<br><span>Build your professional website</span> this weekend.</h1>
<p class="lp-sub">The complete step-by-step guide for professionals who want a real website without paying a developer or learning to code.</p>

<div class="lp-proof">
  <div><div class="lp-stat-n">10</div><div class="lp-stat-l">Chapters</div></div>
  <div><div class="lp-stat-n">35</div><div class="lp-stat-l">Terms explained</div></div>
  <div><div class="lp-stat-n">15</div><div class="lp-stat-l">Errors fixed</div></div>
  <div><div class="lp-stat-n">$0</div><div class="lp-stat-l">To follow</div></div>
</div>

<div class="lp-form-wrap">
  <div id="lp-form-inner">
    <p class="lp-form-title">Get the free guide</p>
    <p class="lp-form-sub">Drop your details and the PDF lands in your inbox instantly.</p>
    <input class="lp-input" id="lp-name" placeholder="Your first name" type="text" />
    <input class="lp-input" id="lp-email" placeholder="Your email address" type="email" />
    <button class="lp-btn" onclick="lpSubmit()">Send me the guide</button>
    <div class="lp-consent">
      <input type="checkbox" id="lp-gdpr" />
      <label for="lp-gdpr">I agree to receive the guide and occasional insights from Obed Favour. No spam. Unsubscribe anytime. <a href="/privacy">Privacy Policy</a>.</label>
    </div>
  </div>
  <div class="lp-success" id="lp-success">
    <div class="lp-success-icon">✉️</div>
    <div class="lp-success-t">Check your inbox.</div>
    <div class="lp-success-s">Your guide is on its way to you now. If you do not see it in 2 minutes, check your spam folder and mark it as Not Spam.</div>
  </div>
</div>

<div class="lp-section-label">What is inside</div>
<div class="lp-section-title">10 chapters. Everything you need.</div>
<div class="lp-chapters">
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 1</div><div class="lp-chapter-t">Installing your tools in 30 minutes</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 2</div><div class="lp-chapter-t">Creating and deploying your first site</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 3</div><div class="lp-chapter-t">Connecting your custom domain</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 4</div><div class="lp-chapter-t">Building your pages from scratch</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 5</div><div class="lp-chapter-t">Setting up your contact form and booking link</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 6</div><div class="lp-chapter-t">Google Analytics and Search Console</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 7</div><div class="lp-chapter-t">Making it look great on mobile</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 8</div><div class="lp-chapter-t">Writing content that converts visitors</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 9</div><div class="lp-chapter-t">35-term plain English glossary</div></div>
  <div class="lp-chapter"><div class="lp-chapter-n">Chapter 10</div><div class="lp-chapter-t">15 common errors and exact fixes</div></div>
</div>

<div class="lp-section-label">This guide is for you if</div>
<div class="lp-section-title">Sound familiar?</div>
<ul class="lp-for-list">
  <li>You are a consultant, coach, or freelancer without a professional website</li>
  <li>You have been quoted $3,000 or more by a developer and want to build it yourself</li>
  <li>You tried Wix or Squarespace and felt limited by the templates</li>
  <li>You want a fast, Google-indexed website on your own domain</li>
  <li>You have zero technical background but are willing to follow steps</li>
  <li>You want to own your digital presence completely, not rent it</li>
</ul>

<div class="lp-about">
  <div class="lp-avatar">OF</div>
  <div>
    <div class="lp-about-name">Obed Favour Chukwuemeka</div>
    <div class="lp-about-role">Growth Marketer & AI Automation Expert, Lagos</div>
    <div class="lp-about-bio">I am a growth marketer, not a developer. I built obedfavour.com in a weekend using only free tools and a lot of Googling. I documented every step, every error, and every fix so you do not have to spend four days doing what took me two.</div>
  </div>
</div>

<div class="lp-footer">
  Obed Favour Chukwuemeka &nbsp;·&nbsp; Lagos, Nigeria &nbsp;·&nbsp; <a href="/privacy">Privacy Policy</a>
</div>

</div>
</div>

<script>
function lpSubmit() {
  var name = document.getElementById('lp-name').value.trim();
  var email = document.getElementById('lp-email').value.trim();
  var consent = document.getElementById('lp-gdpr').checked;
  if (!name) { alert('Please enter your first name.'); return; }
  if (!email || !email.includes('@')) { alert('Please enter a valid email address.'); return; }
  if (!consent) { alert('Please tick the consent box to receive the guide.'); return; }
  var btn = document.querySelector('.lp-btn');
  btn.textContent = 'Sending...';
  btn.disabled = true;
  fetch('https://obed-audit-proxy.obeethecreator.workers.dev/subscribe', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json' },
    body: JSON.stringify({ email: email, name: name })
  }).then(function() {
    document.getElementById('lp-form-inner').style.display = 'none';
    document.getElementById('lp-success').style.display = 'block';
  }).catch(function() {
    document.getElementById('lp-form-inner').style.display = 'none';
    document.getElementById('lp-success').style.display = 'block';
  });
}
</script>
