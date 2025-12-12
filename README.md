# Capstone App — CI/CD Demo

## What this repo contains
- Minimal Flask app with `/` and `/health`
- Unit tests (pytest)
- Dockerfile
- CI workflow for PRs (build + tests)
- CD workflow for main (build, push, deploy to environments)
- Rollback & health scripts

## Local run (dev)
1. Build:
   ```bash
   docker build -t capstone-app:local -f docker/Dockerfile .
