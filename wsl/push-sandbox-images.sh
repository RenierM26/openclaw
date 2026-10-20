#!/usr/bin/env bash
set -euo pipefail

PREFIX="ghcr.io/renierm26"

docker tag openclaw-sandbox:trixie-slim \
  "${PREFIX}/openclaw-sandbox:trixie-slim"

docker tag openclaw-sandbox-common:trixie-slim \
  "${PREFIX}/openclaw-sandbox-common:trixie-slim"

docker tag openclaw-sandbox-browser:trixie-slim \
  "${PREFIX}/openclaw-sandbox-browser:trixie-slim"

docker push "${PREFIX}/openclaw-sandbox:trixie-slim"
docker push "${PREFIX}/openclaw-sandbox-common:trixie-slim"
docker push "${PREFIX}/openclaw-sandbox-browser:trixie-slim"
