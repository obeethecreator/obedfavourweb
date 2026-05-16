# Obed Favour — Personal Website

> **Turning Ideas into Systems that Scale**

🌐 **Live Site:** [www.obedfavour.com](https://www.obedfavour.com)

Growth Marketer | AI Automation Expert | Content Strategist

---

## Connect With Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white)](https://linkedin.com/in/obed-favour-speaks)
[![Twitter/X](https://img.shields.io/badge/X-000000?style=for-the-badge&logo=x&logoColor=white)](https://twitter.com/Obeethecreator)
[![Instagram](https://img.shields.io/badge/Instagram-E4405F?style=for-the-badge&logo=instagram&logoColor=white)](https://instagram.com/obeethecre8or)
[![TikTok](https://img.shields.io/badge/TikTok-000000?style=for-the-badge&logo=tiktok&logoColor=white)](https://tiktok.com/@obeethecreator)
[![YouTube](https://img.shields.io/badge/YouTube-FF0000?style=for-the-badge&logo=youtube&logoColor=white)](https://youtube.com/@obeethecreator)
[![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/obeethecreator)

---

## About This Site

This is the source code for my personal website. Built with Hugo and the Blowfish theme, deployed automatically to GitHub Pages via GitHub Actions, and served on a custom domain.

I help brands grow through data-driven marketing, AI automation, and content strategy. Building systems that work while you sleep.

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| [Hugo Extended](https://gohugo.io/) | Static site generator |
| [Blowfish Theme](https://blowfish.page/) | Hugo theme |
| [GitHub Pages](https://pages.github.com/) | Free hosting |
| [GitHub Actions](https://github.com/features/actions) | Auto-deploy on push |
| [Namecheap](https://namecheap.com) | Custom domain registrar |

---

## Project Structure

```
obedfavourweb/
├── .github/
│   └── workflows/
│       └── hugo.yml          # Auto-deploy workflow
├── assets/
│   └── avatar.jpg            # Profile picture
├── config/
│   └── _default/
│       ├── params.toml       # Theme settings (dark mode, colors)
│       ├── languages.en.toml # Author profile, bio, social links
│       └── menus.en.toml     # Navigation menu
├── content/                  # Pages and blog posts go here
├── static/
│   ├── CNAME                 # Custom domain
│   └── favicon files         # Browser tab icon (OF initials)
├── themes/
│   └── blowfish/             # Theme (git submodule)
└── hugo.toml                 # Main Hugo config
```

---

## Running Locally

**Requirements:** Hugo Extended installed ([install guide](https://gohugo.io/installation/))

```bash
# Clone the repo
git clone --recurse-submodules https://github.com/obeethecreator/obedfavourweb.git

# Navigate into the folder
cd obedfavourweb

# Start local server
hugo server
```

Then open [http://localhost:1313](http://localhost:1313) in your browser.

---

## Deploying

The site deploys automatically every time you push to the `main` branch via GitHub Actions. No manual steps needed.

```bash
git add .
git commit -m "your update message"
git push
```

Wait ~2 minutes then check [www.obedfavour.com](https://www.obedfavour.com) for the live update.

---

## Maintenance Notes

### Updating Your Profile
Edit `config/_default/languages.en.toml` to change your name, bio, headline, profile picture, or social links.

### Changing Theme Settings
Edit `config/_default/params.toml` to change color scheme, dark/light mode, or layout options.

Available color schemes: `blowfish` `neon` `ocean` `fire` `slate` `terminal` `congo`

### Adding a New Page
```bash
hugo new content/pagename.md
```

### Adding a Blog Post
```bash
hugo new content/posts/your-post-title.md
```

### Updating Profile Picture
Replace `assets/avatar.jpg` with your new photo (keep the same filename).

---

## DNS Configuration (Namecheap)

| Type | Host | Value |
|------|------|-------|
| A Record | @ | 185.199.108.153 |
| A Record | @ | 185.199.109.153 |
| A Record | @ | 185.199.110.153 |
| A Record | @ | 185.199.111.153 |
| CNAME | www | obeethecreator.github.io |

---

## Common Fixes

**Site not loading locally**
```bash
cd Documents/obedfavourweb
hugo server
```

**Profile info disappeared**
Re-enter the full author config in `config/_default/languages.en.toml`

**Push rejected by GitHub**
```bash
git pull origin main --allow-unrelated-histories
git push
```

**Changes not showing on live site**
```bash
git add .
git commit -m "describe your change"
git push
```

**Stuck in Vim**
Type `:wq` and press Enter

---

*Built from scratch. No templates. No shortcuts. Just learning.* 🔥
