#!/bin/bash
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

cd "$CLAUDE_PROJECT_DIR"

# node-sass requires Python 2 for native compilation which isn't available; skip scripts
npm install --ignore-scripts
