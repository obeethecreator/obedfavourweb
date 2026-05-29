$content = @"
---
title: "Obed Favour"
description: "Growth Marketer & AI Automation Expert helping brands scale through AI automation, content strategy and paid social."
---
<div style="display:grid;grid-template-columns:repeat(4,1fr);gap:1px;background:rgba(255,255,255,0.1);border:1px solid rgba(255,255,255,0.1);border-radius:8px;overflow:hidden;margin:2rem 0;">
  <div style="padding:28px 20px;text-align:center;background:rgba(255,255,255,0.03);">
    <div style="font-size:32px;font-weight:600;color:inherit;">1,900%</div>
    <div style="font-size:12px;opacity:0.6;margin-top:6px;line-height:1.4;">YouTube subscriber growth</div>
  </div>
  <div style="padding:28px 20px;text-align:center;background:rgba(255,255,255,0.03);">
    <div style="font-size:32px;font-weight:600;color:inherit;">3.5M+</div>
    <div style="font-size:12px;opacity:0.6;margin-top:6px;line-height:1.4;">Organic views generated</div>
  </div>
  <div style="padding:28px 20px;text-align:center;background:rgba(255,255,255,0.03);">
    <div style="font-size:32px;font-weight:600;color:inherit;">`$0.01</div>
    <div style="font-size:12px;opacity:0.6;margin-top:6px;line-height:1.4;">CPC via Meta Ads</div>
  </div>
  <div style="padding:28px 20px;text-align:center;background:rgba(255,255,255,0.03);">
    <div style="font-size:32px;font-weight:600;color:inherit;">`$1.4M</div>
    <div style="font-size:12px;opacity:0.6;margin-top:6px;line-height:1.4;">Pre-seed fundraise supported</div>
  </div>
</div>
<div style="text-align:center;margin:2rem 0 1rem;">
  <a href="https://calendly.com/obeethecreator/30min" target="_blank" style="display:inline-block;background:#2E75B6;color:#fff;padding:14px 32px;border-radius:6px;font-size:15px;font-weight:500;text-decoration:none;letter-spacing:0.02em;">Book a Free Strategy Call</a>
  <div style="font-size:12px;opacity:0.5;margin-top:12px;">30 min - No obligation - Real advice</div>
</div>
<div style="background:linear-gradient(135deg,#0F1C2E 0%,#1A3A5C 100%);border-radius:12px;padding:3rem 2rem;margin:3rem 0;text-align:center;">
<div style="max-width:580px;margin:0 auto;">
<p style="color:#5B9BD5;font-size:0.85rem;letter-spacing:0.12em;text-transform:uppercase;margin-bottom:0.75rem;font-weight:600;">FREE DOWNLOAD</p>
<h2 style="color:#ffffff;font-size:1.8rem;font-weight:700;line-height:1.3;margin-bottom:1rem;">From Zero to Live</h2>
<p style="color:#A8C4E8;font-size:1rem;line-height:1.6;margin-bottom:0.5rem;">How to build your professional website in a weekend without a developer, without paying an agency, and without breaking anything.</p>
<p style="color:#6A9AC8;font-size:0.9rem;margin-bottom:2rem;">Free PDF - 10 chapters - 35-term glossary - 15-error debug guide</p>
<iframe width="540" height="305" src="https://807b4f6a.sibforms.com/v2/serve/MUIFAAxM3SSaD8ih1367Kwl_xZ3cLhufMgTewVx47nc0k7UkSFlViHY6UjtnUxDRa0FgPCi_b37rxojQMIgQFGPGb3bU5xQ0dB7I3qkI_8lAy-muRvnMYBwUv2pjgKdwdk7M2nJt07VzzqYC9bVuNMUaHuRzmrB1Uv0KRL3Dkm4l8QiVU0sUuTtmsm1gWt-Tvyxz9LqvBlQne-sR-g==" frameborder="0" scrolling="auto" allowfullscreen style="display:block;margin:0 auto;max-width:100%;border-radius:8px;"></iframe>
<p style="color:#4A7A9B;font-size:0.8rem;margin-top:1rem;">No spam. No fluff. Unsubscribe anytime.</p>
</div>
</div>
"@
[System.IO.File]::WriteAllText("$PWD\content\_index.md", $content, [System.Text.Encoding]::UTF8)
Write-Host "Done"