#!/bin/bash
# Start local development server
# Usage: bash scripts/dev.sh

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
APP_DIR="$ROOT/src/app"

echo "Starting daf-avoda dev server..."
echo "Open: http://localhost:3000"
echo "Press Ctrl+C to stop"
echo ""

cd "$APP_DIR" && python3 -m http.server 3000
