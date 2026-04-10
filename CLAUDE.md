# daf-avoda — Worksheet Builder

## Project Overview
A web-based tool for creating mathematical worksheets (דפי עבודה) for educational use.
Supports Hebrew (RTL), English, and German. Renders shapes, graphs, equations, and more.

The end goal is a full SaaS product with user management, subscriptions, and payment processing.

## Current Status
- **Phase**: Local development
- **Stack**: Single-file HTML app (vanilla JS + Canvas API + MathJax)
- **Active app**: `src/app/index.html`

## Project Structure
```
src/app/         → Active worksheet builder application
src/web/         → Marketing website / landing page (future)
src/assets/      → Shared fonts, images, icons
server/          → Backend (future: Node.js or Python)
  api/           → REST API endpoints
  auth/          → User management & authentication
  billing/       → Payment processing (Stripe / Tranzila)
  db/            → Database models & migrations
history/         → Archived versions (copy here before major changes)
mcp/             → MCP server configs and custom servers
skills/          → Claude Code reusable skills
tests/           → Unit, integration, e2e tests
scripts/         → Dev, build, deploy scripts
docs/            → Architecture docs, changelog
```

## Development
Run locally:
```bash
bash scripts/dev.sh
# Opens at http://localhost:3000
```

## Key Rules for Claude
- **Before any major change**: copy current `src/app/index.html` to `history/vXX/` first
- **Language**: User communicates in Hebrew. Responses in Hebrew are fine.
- **RTL**: The app supports Hebrew/RTL — preserve all RTL logic when editing
- **No breaking changes**: The app is actively used. Test before suggesting refactors.
- **Versioning**: Update `docs/CHANGELOG.md` when making notable changes

## Future Roadmap
1. Split monolithic HTML into separate CSS/JS modules
2. Build landing page (`src/web/`)
3. Add Node.js backend with user auth
4. Integrate payment processing
5. Docker + cloud deployment
