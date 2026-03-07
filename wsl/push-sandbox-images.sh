#!/usr/bin/env bash
set -euo pipefail

PREFIX="ghcr.io/renierm26"

docker tag openclaw-sandbox:bookworm-slim \
  "${PREFIX}/openclaw-sandbox:bookworm-slim"

docker tag openclaw-sandbox-common:bookworm-slim \
  "${PREFIX}/openclaw-sandbox-common:bookworm-slim"

docker tag openclaw-sandbox-browser:bookworm-slim \
  "${PREFIX}/openclaw-sandbox-browser:bookworm-slim"

docker push "${PREFIX}/openclaw-sandbox:bookworm-slim"
docker push "${PREFIX}/openclaw-sandbox-common:bookworm-slim"
docker push "${PREFIX}/openclaw-sandbox-browser:bookworm-slim"