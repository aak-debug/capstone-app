#!/usr/bin/env bash
URL=${1:-http://localhost:8080/health}
STATUS=$(curl -s -o /dev/null -w "%{http_code}" "$URL" || echo "000")
if [ "$STATUS" -ne 200 ]; then
  echo "Health check failed: $STATUS"
  exit 1
fi
echo "Health OK: $STATUS"
