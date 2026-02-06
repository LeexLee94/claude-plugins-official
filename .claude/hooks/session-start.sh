#!/bin/bash
set -euo pipefail

# Only run in remote (Claude Code on the web) environments
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

# Install the yaml package needed by the frontmatter validation script
cd "$CLAUDE_PROJECT_DIR/.github/scripts"
bun install yaml
