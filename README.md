# OpenClaw images for renierm26

This repo builds and publishes a custom OpenClaw gateway image to GHCR, and uses WSL to build/push the sandbox images.

## Images

Gateway image:
- ghcr.io/renierm26/openclaw-gateway-power:latest

Sandbox images:
- ghcr.io/renierm26/openclaw-sandbox:bookworm-slim
- ghcr.io/renierm26/openclaw-sandbox-common:bookworm-slim
- ghcr.io/renierm26/openclaw-sandbox-browser:bookworm-slim

## 1. Publish the gateway image from GitHub Actions

In GitHub:
- Go to Actions
- Run `Build and Publish OpenClaw Gateway Power Image`

That publishes:
- `ghcr.io/renierm26/openclaw-gateway-power:latest`
- `ghcr.io/renierm26/openclaw-gateway-power:<date-sha>`

## 2. Build sandbox images in WSL

Install Docker Desktop with WSL integration.

Clone OpenClaw inside WSL:

```bash
git clone https://github.com/openclaw/openclaw.git ~/src/openclaw