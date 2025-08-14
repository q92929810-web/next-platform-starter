#!/usr/bin/env bash
set -e
if ! command -v vercel >/dev/null 2>&1; then
  echo "Vercel CLI가 설치되어 있지 않습니다. npm i -g vercel 후 다시 실행하세요."
  exit 1
fi
vercel --prod --yes
