param()
$ErrorActionPreference = "Stop"
if (-not (Get-Command netlify -ErrorAction SilentlyContinue)) {
  Write-Host "Netlify CLI가 없습니다. npm i -g netlify-cli 후 다시 실행하세요."
  exit 1
}
netlify deploy --prod --dir .
