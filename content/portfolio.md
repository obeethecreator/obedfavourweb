+++
title = "Portfolio"
date = '2026-05-16T14:09:16+01:00'
draft = false
showFullContent = true
+++

<style>
@import url('https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=DM+Sans:ital,wght@0,300;0,400;0,500;1,300&display=swap');

article { max-width: 100% !important; }
.max-w-prose { max-width: 100% !important; }
.max-w-screen-xl { max-width: 100% !important; }
main { max-width: 100% !important; }
.content { max-width: 100% !important; }
.prose { max-width: 100% !important; }

.portfolio-wrap {
  font-family: 'DM Sans', sans-serif;
  max-width: 100%;
  margin: 0 auto;
  padding: 0 2rem;
  width: 100%;
}

.port-hero {
  text-align: center;
  padding: 3rem 0 2rem;
}

.port-hero h1 {
  font-family: 'Syne', sans-serif;
  font-size: clamp(2rem, 5vw, 3.5rem);
  font-weight: 800;
  background: linear-gradient(135deg, #3b82f6, #8b5cf6, #ec4899);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  background-clip: text;
  margin-bottom: 1rem;
  line-height: 1.1;
}

.port-hero p {
  font-size: 1.1rem;
  color: inherit;
  opacity: 0.7;
  max-width: 550px;
  margin: 0 auto;
  line-height: 1.7;
}

.stats-banner {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
  gap: 1rem;
  margin: 3rem 0;
}

.stat-item {
  background: rgba(59,130,246,0.08);
  border: 1px solid rgba(59,130,246,0.25);
  border-radius: 16px;
  padding: 1.5rem 1rem;
  text-align: center;
  transition: transform 0.3s ease, border-color 0.3s ease;
}

.stat-item:hover {
  transform: translateY(-4px);
  border-color: rgba(59,130,246,0.5);
}

.stat-number {
  font-family: 'Syne', sans-serif;
  font-size: clamp(1rem, 2.5vw, 1.8rem);
  font-weight: 800;
  color: #3b82f6;
  display: block;
  line-height: 1;
}

.stat-label {
  font-size: 0.78rem;
  color: inherit;
  opacity: 0.6;
  margin-top: 0.4rem;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.section-title {
  font-family: 'Syne', sans-serif;
  font-size: 1.8rem;
  font-weight: 700;
  color: inherit;
  margin: 3rem 0 1.5rem;
  display: flex;
  align-items: center;
  gap: 0.75rem;
}

.section-title::after {
  content: '';
  flex: 1;
  height: 1px;
  background: linear-gradient(to right, rgba(59,130,246,0.4), transparent);
}

.brand-grid {
  display: flex;
  align-items: center;
  justify-content: center;
  gap: 2rem;
  flex-wrap: wrap;
  margin: 2rem 0 3rem;
}

.brand-card {
  background: rgba(59,130,246,0.05);
  border: 1px solid rgba(59,130,246,0.2);
  border-radius: 16px;
  padding: 2rem 3rem;
  display: flex;
  flex-direction: column;
  align-items: center;
  gap: 1rem;
  transition: transform 0.3s ease, border-color 0.3s ease;
  min-width: 200px;
}

.brand-card:hover {
  transform: translateY(-4px);
  border-color: rgba(59,130,246,0.4);
}

.brand-card img {
  height: 80px;
  width: auto;
  object-fit: contain;
}

.brand-card span {
  font-size: 0.8rem;
  opacity: 0.6;
  text-transform: uppercase;
  letter-spacing: 0.08em;
  font-weight: 500;
}

.case-card {
  background: rgba(59,130,246,0.05);
  border: 1px solid rgba(59,130,246,0.2);
  border-radius: 20px;
  padding: 2rem;
  margin-bottom: 2rem;
  position: relative;
  overflow: hidden;
  transition: border-color 0.3s ease;
}

.case-card::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, #3b82f6, #8b5cf6, #ec4899);
}

.case-card:hover {
  border-color: rgba(59,130,246,0.4);
}

.case-header {
  display: flex;
  align-items: flex-start;
  justify-content: space-between;
  gap: 1rem;
  margin-bottom: 1.5rem;
  flex-wrap: wrap;
}

.case-title {
  font-family: 'Syne', sans-serif;
  font-size: 1.5rem;
  font-weight: 700;
  color: inherit;
  margin: 0 0 0.3rem;
}

.case-subtitle {
  font-size: 0.85rem;
  color: #3b82f6;
  font-weight: 500;
  text-transform: uppercase;
  letter-spacing: 0.05em;
}

.case-badge {
  background: rgba(139,92,246,0.12);
  border: 1px solid rgba(139,92,246,0.3);
  border-radius: 20px;
  padding: 0.4rem 1rem;
  font-size: 0.78rem;
  color: #8b5cf6;
  white-space: nowrap;
  font-weight: 500;
}

.case-desc {
  color: inherit;
  opacity: 0.75;
  line-height: 1.75;
  margin-bottom: 1.5rem;
  font-size: 0.95rem;
}

.results-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(130px, 1fr));
  gap: 0.75rem;
  margin-bottom: 1.5rem;
}

.result-chip {
  background: rgba(59,130,246,0.06);
  border: 1px solid rgba(59,130,246,0.18);
  border-radius: 12px;
  padding: 1rem 0.75rem;
  text-align: center;
}

.result-value {
  font-family: 'Syne', sans-serif;
  font-size: 1.4rem;
  font-weight: 700;
  color: #3b82f6;
  display: block;
}

.result-desc {
  font-size: 0.72rem;
  color: inherit;
  opacity: 0.6;
  margin-top: 0.25rem;
  line-height: 1.3;
}

.skills-used {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
  margin-top: 1rem;
}

.skill-tag {
  background: rgba(139,92,246,0.1);
  border: 1px solid rgba(139,92,246,0.25);
  border-radius: 20px;
  padding: 0.3rem 0.8rem;
  font-size: 0.75rem;
  color: #8b5cf6;
}

.cta-section {
  background: rgba(59,130,246,0.06);
  border: 1px solid rgba(59,130,246,0.2);
  border-radius: 20px;
  padding: 2.5rem;
  text-align: center;
  margin: 3rem 0;
}

.cta-section h3 {
  font-family: 'Syne', sans-serif;
  font-size: 1.6rem;
  font-weight: 700;
  color: inherit;
  margin-bottom: 0.75rem;
}

.cta-section p {
  color: inherit;
  opacity: 0.7;
  margin-bottom: 1.5rem;
  font-size: 0.95rem;
}

.cta-btn {
  display: inline-block;
  background: linear-gradient(135deg, #3b82f6, #8b5cf6);
  color: #fff !important;
  padding: 0.85rem 2rem;
  border-radius: 50px;
  font-weight: 600;
  text-decoration: none !important;
  font-size: 0.95rem;
  transition: opacity 0.3s ease, transform 0.3s ease;
}

.cta-btn:hover {
  opacity: 0.9;
  transform: translateY(-2px);
}
</style>

<div class="portfolio-wrap">

<div class="port-hero">
  <h1>Results That Speak<br>For Themselves</h1>
  <p>Real campaigns. Real growth. Real revenue. Here's what happens when strategy meets execution.</p>
</div>

<div class="stats-banner">
  <div class="stat-item">
    <span class="stat-number">1,900%</span>
    <div class="stat-label">YouTube Growth</div>
  </div>
  <div class="stat-item">
    <span class="stat-number">3.5M+</span>
    <div class="stat-label">Organic Views</div>
  </div>
  <div class="stat-item">
    <span class="stat-number">$0.01</span>
    <div class="stat-label">Cost Per Click</div>
  </div>
  <div class="stat-item">
    <span class="stat-number">$1.4M</span>
    <div class="stat-label">Client Fundraise</div>
  </div>
  <div class="stat-item">
    <span class="stat-number">60K+</span>
    <div class="stat-label">Subscribers</div>
  </div>
</div>

<div class="section-title">Brands I've Worked With</div>

<div class="brand-grid">
  <div class="brand-card">
    <img src="/greatgrace-logo.png" alt="Great Grace Miami">
    <span>Great Grace Miami</span>
  </div>
  <div class="brand-card">
    <img src="/ayoken-logo.jpg" alt="Ayoken">
    <span>Ayoken NFT</span>
  </div>
</div>

<div class="section-title">Case Studies</div>

<!-- CASE STUDY 1 -->
<div class="case-card">
  <div class="case-header">
    <div>
      <div class="case-subtitle">Social Media Growth · Content Strategy</div>
      <div class="case-title">Great Grace Miami</div>
    </div>
    <div class="case-badge">2021 – Present</div>
  </div>

  <p class="case-desc">
    Great Grace Miami needed to grow their digital presence and convert online audiences into real-world attendees and community members. I engineered a full-funnel content acquisition system — using short-form video for discovery, long-form YouTube for trust-building, and event campaigns for conversion. The result was one of the most efficient organic growth stories in the faith-based media space.
  </p>

  <div class="results-grid">
    <div class="result-chip">
      <span class="result-value">1,900%</span>
      <div class="result-desc">YouTube growth 3K → 60K+</div>
    </div>
    <div class="result-chip">
      <span class="result-value">3.5M+</span>
      <div class="result-desc">Organic views, zero paid</div>
    </div>
    <div class="result-chip">
      <span class="result-value">28K+</span>
      <div class="result-desc">Instagram followers</div>
    </div>
    <div class="result-chip">
      <span class="result-value">3,000+</span>
      <div class="result-desc">In-person attendees</div>
    </div>
    <div class="result-chip">
      <span class="result-value">60%</span>
      <div class="result-desc">Engagement uplift YoY</div>
    </div>
    <div class="result-chip">
      <span class="result-value">$0.01</span>
      <div class="result-desc">CPC on Meta Ads</div>
    </div>
  </div>

  <div class="skills-used">
    <span class="skill-tag">YouTube SEO</span>
    <span class="skill-tag">Short-Form Video</span>
    <span class="skill-tag">Content Repurposing</span>
    <span class="skill-tag">Meta Ads</span>
    <span class="skill-tag">Instagram Growth</span>
    <span class="skill-tag">Full-Funnel Strategy</span>
    <span class="skill-tag">CapCut</span>
    <span class="skill-tag">Canva</span>
  </div>
</div>

<!-- CASE STUDY 2 -->
<div class="case-card">
  <div class="case-header">
    <div>
      <div class="case-subtitle">Community Growth · Web3 · Fundraising</div>
      <div class="case-title">Ayoken NFT Marketplace</div>
    </div>
    <div class="case-badge">2021 – 2022 · London</div>
  </div>

  <p class="case-desc">
    Ayoken was a music NFT marketplace launching in the competitive Web3 space. As Growth & Community Lead, I built their entire community infrastructure from scratch across Discord, Telegram, Twitter, and Instagram — creating the audience and trust that directly contributed to the company's $1.4M pre-seed fundraise. I also produced educational content that simplified NFTs for newcomers and converted crypto-curious audiences into active platform users.
  </p>

  <div class="results-grid">
    <div class="result-chip">
      <span class="result-value">$1.4M</span>
      <div class="result-desc">Pre-seed fundraise contributed</div>
    </div>
    <div class="result-chip">
      <span class="result-value">50%</span>
      <div class="result-desc">Twitter growth in 90 days</div>
    </div>
    <div class="result-chip">
      <span class="result-value">1,000+</span>
      <div class="result-desc">High-intent site visits</div>
    </div>
    <div class="result-chip">
      <span class="result-value">40%</span>
      <div class="result-desc">Engagement uplift during KiDi NFT drop</div>
    </div>
  </div>

  <div class="skills-used">
    <span class="skill-tag">Discord Community</span>
    <span class="skill-tag">Telegram</span>
    <span class="skill-tag">Web3 Marketing</span>
    <span class="skill-tag">Twitter Growth</span>
    <span class="skill-tag">Community Infrastructure</span>
    <span class="skill-tag">NFT Campaigns</span>
    <span class="skill-tag">AMA Facilitation</span>
  </div>
</div>

<div class="cta-section">
  <h3>Want Results Like These?</h3>
  <p>Let's build a growth system tailored to your brand. I'm currently taking on new clients.</p>
  <a href="/services" class="cta-btn">Work With Me 🚀</a>
</div>

</div>
