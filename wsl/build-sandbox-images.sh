#!/usr/bin/env bash
set -euo pipefail

REPO_DIR="${1:-$HOME/src/openclaw}"

if [[ ! -d "$REPO_DIR/.git" ]]; then
  echo "OpenClaw repo not found at: $REPO_DIR"
  echo "Clone it first:"
  echo "  git clone https://github.com/openclaw/openclaw.git $REPO_DIR"
  exit 1
fi

cd "$REPO_DIR"

./scripts/sandbox-setup.sh
./scripts/sandbox-common-setup.sh
./scripts/sandbox-browser-setup.sh

echo
echo "Built images:"
docker images | grep -E 'openclaw-sandbox|REPOSITORY'