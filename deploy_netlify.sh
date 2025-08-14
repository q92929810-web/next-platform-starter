#!/usr/bin/env bash
set -e
if ! command -v netlify >/dev/null 2>&1; then
  echo "Netlify CLI가 설치되어 있지 않습니다. npm i -g netlify-cli 후 다시 실행하세요."
  exit 1
fi
netlify deploy --prod --dir .
