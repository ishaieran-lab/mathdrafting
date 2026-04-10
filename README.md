# daf-avoda — Worksheet Builder

A web-based tool for creating mathematical worksheets and educational diagrams.
Supports Hebrew (RTL), English, and German.

## Quick Start

```bash
bash scripts/dev.sh
# → http://localhost:3000
```

## Project Structure

| Folder | Purpose |
|--------|---------|
| `src/app/` | Active worksheet builder application |
| `src/web/` | Marketing website / landing page *(future)* |
| `src/assets/` | Shared fonts, images, icons |
| `server/` | Backend — auth, API, billing, DB *(future)* |
| `history/` | Archived versions — snapshot before major changes |
| `mcp/` | MCP server configurations |
| `skills/` | Claude Code reusable skills |
| `tests/` | Unit, integration, e2e tests |
| `scripts/` | Dev, build, deploy scripts |
| `docs/` | Architecture, changelog |

## Roadmap

- [x] Local worksheet builder (Canvas + MathJax)
- [ ] Split into CSS/JS modules
- [ ] Landing page
- [ ] User authentication
- [ ] Payment processing
- [ ] Cloud deployment
