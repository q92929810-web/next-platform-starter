# 루모라 타로 — 배포 템플릿 (Vercel/Netlify)

이 저장소는 **단일 HTML (index.html)** 로 구성된 정적 웹앱입니다.  
아래 방법 중 하나로 바로 배포하세요.

---

## 🚀 가장 빠르게: Vercel CLI 무설정 배포 (추천)
사전: Node.js, `npm i -g vercel`

```bash
# 1) 폴더로 이동
cd path/to/this/folder

# 2) 최초 1회만 로그인
vercel login

# 3) 바로 배포 (프로젝트 자동 생성)
vercel --prod --yes
```
- 완료되면 `https://xxxxx.vercel.app` 주소가 출력됩니다.

> Windows PowerShell도 동일하게 실행 가능: `vercel --prod --yes`

---

## ☁️ Netlify CLI 배포
사전: Node.js, `npm i -g netlify-cli`

```bash
cd path/to/this/folder
netlify login
netlify deploy --prod --dir .
```
- 완료되면 `https://xxxxx.netlify.app` 주소가 출력됩니다.

---

## 🐙 GitHub → Vercel 연동 (자동배포)
1. 이 폴더 내용을 GitHub 새 저장소로 업로드 (예: `rumora-tarot`)
2. [Vercel](https://vercel.com) → New Project → Import GitHub → 저장소 선택
3. Framework: **Other/Static** (기본값) → **Deploy**
4. 곧바로 영구 주소(`.vercel.app`) 발급

---

## 🔐 관리자 토큰
- `admin123` 또는 `manager123` → "사이트 관리" 섹션에 입력하면 편집기능 노출

## 🃏 카드 이미지 업로드 규칙 (자산관리)
- 메이저: `major_0` ~ `major_21`
- 슈트: `wands_ace|2..10|page|knight|queen|king`
- `cups_*`, `swords_*`, `pentacles_*` 동일 규칙

---

### 부가 파일
- `vercel.json` : 정적 호스팅 설정
- `netlify.toml` : Netlify 정적 라우팅 설정
- 스크립트: `deploy_vercel.sh`, `deploy_netlify.sh`, `deploy_vercel.ps1`, `deploy_netlify.ps1`

MIT License
