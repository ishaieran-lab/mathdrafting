# Architecture

## Current Architecture (v11)

Single-file HTML application. All CSS, HTML, and JS are embedded in one file.

```
src/app/index.html
├── CSS (lines ~1-142)        — dark theme, component styles
├── HTML (lines ~143-1006)    — toolbar, canvas, panels, modals
└── JavaScript (lines ~1007-6296)
    ├── Element management    — create, select, edit, delete
    ├── Canvas rendering      — drawing loop, transforms
    ├── Shape geometry        — calculations for all shape types
    ├── Math engine           — expression parsing, MathJax integration
    ├── Multi-select          — rubber-band, group ops
    ├── Export                — PNG, PDF/print
    └── Localization          — Hebrew/English/German, RTL support
```

**External dependencies (CDN):**
- MathJax 3.2.2 — mathematical formula rendering
- Google Fonts — Heebo (Hebrew), JetBrains Mono

---

## Target Architecture (future)

```
┌─────────────────────┐     ┌──────────────────────┐
│   src/web/          │     │   src/app/           │
│   Landing page      │     │   Worksheet builder  │
│   (React or plain)  │     │   (split into modules)│
└─────────┬───────────┘     └──────────┬───────────┘
          │                            │
          └──────────┬─────────────────┘
                     │ HTTPS
          ┌──────────▼───────────┐
          │   server/            │
          │   Node.js / Express  │
          ├──────────────────────┤
          │   auth/   JWT + sessions
          │   api/    REST endpoints
          │   billing/ Stripe / Tranzila
          │   db/     PostgreSQL
          └──────────────────────┘
```

**Planned tech stack:**
- Frontend: Vanilla JS (modular) or lightweight React
- Backend: Node.js + Express
- Database: PostgreSQL
- Auth: JWT + refresh tokens
- Payments: Stripe (international) or Tranzila (Israel)
- Hosting: VPS (DigitalOcean / AWS) + Nginx
- Containerization: Docker + docker-compose
