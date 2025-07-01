#!/bin/bash

set -x

REPO_URL="https://<your-token>@dev.azure.com/yakshrajput77/Voting-App/_git/voting-app"
TEMP_DIR="/tmp/temp_repo"

if [ -d "$TEMP_DIR" ]; then
  rm -rf "$TEMP_DIR"
fi

git clone "$REPO_URL" "$TEMP_DIR"
cd "$TEMP_DIR" || exit 1

TARGET_FILE="k8s-specifications/$1-deployment.yaml"

if [ -f "$TARGET_FILE" ]; then
  sed -i "s|image:.*|image: yakshazurecicd/$2:$3|g" "$TARGET_FILE"
else
  echo "❌ File not found: $TARGET_FILE"
  exit 1
fi

git add .
git commit -m "Update Kubernetes manifest" || echo "No changes to commit"
git push

rm -rf "$TEMP_DIR"
