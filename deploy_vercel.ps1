param()
$ErrorActionPreference = "Stop"
if (-not (Get-Command vercel -ErrorAction SilentlyContinue)) {
  Write-Host "Vercel CLI가 없습니다. npm i -g vercel 후 다시 실행하세요."
  exit 1
}
vercel --prod --yes
