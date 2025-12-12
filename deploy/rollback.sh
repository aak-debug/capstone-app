
#!/usr/bin/env bash
# Usage: ./rollback.sh IMAGE_TAG
IMAGE_TAG=$1
if [ -z "$IMAGE_TAG" ]; then
  echo "Usage: $0 <image-tag>"
  exit 1
fi
docker stop capstone-app || true
docker rm capstone-app || true
docker run -d --name capstone-app -p 8080:80 "$IMAGE_TAG"
echo "Rolled back to $IMAGE_TAG"
