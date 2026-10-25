# moderi-legal 작업 규칙 (공개 안 됨 — 점 폴더는 GitHub Pages가 내보내지 않는다)

이 저장소는 push하는 순간 https://aropa777.github.io/moderi-legal/ 에 공개된다.
## 여러 창이 같이 쓰는 폴더 — 지킬 것 (2026-10-25)
- **한 커밋 = 한 앱.** 자기 앱 파일만 `git add 파일이름`으로 골라 넣는다. `git add -A`·`git add .`·`git commit -a` 금지
- 저장(커밋) 검사와 올리기(push) 검사가 `.githooks/`에 있다. 여러 앱 파일이 섞이거나 담당 앱을 모르는 파일이 있으면 막힌다
  - 새 클론이면 한 번: `git config core.hooksPath .githooks`
- 새 앱 파일을 만들면 `.githooks/app-of.sh`에 파일 이름 → 앱 줄을 먼저 더한다(공통 커밋으로 따로)
- 다른 앱 파일이 고쳐진 채(커밋 안 됨) 있어도 건드리지 않는다 — 그 앱 창의 일
- push는 사용자 승인 후. **앱 이름을 붙여서만** 올라간다: `PUSH_APP=스왑백 git push` — 올라갈 커밋 중 다른 앱 것이 하나라도 있으면 막힌다(다른 창이 커밋만 해 두고 아직 공개하면 안 되는 것을 같이 올리지 않게). 공통 파일은 `PUSH_APP=공통`
  - 막히면: 남의 커밋이 앞에 있다는 뜻 — 그 앱 창(또는 사용자)에게 묻는다. 내 것만 먼저 올려야 하면 `git switch -c 앱-only origin/main && git cherry-pick 내커밋 && PUSH_APP=앱 git push origin 앱-only:main`
- `--no-verify` 금지(검사를 건너뛴다)
- 권장: 창마다 `git worktree add ../moderi-legal-<앱> -b <앱>-work origin/main`으로 앱별 작업 폴더를 따로 쓰면 남의 미완성 파일이 같은 폴더에 섞이지 않는다
- 주소(파일 이름)는 바꾸지 않는다 — 출시된 앱·App Store Connect·사이트가 이 주소를 쓴다

## 파일 → 담당 앱
| 앱 | 파일 |
|---|---|
| 우리의하루 | `privacy.html`, `privacy_*.html`(직전판), `terms.html` |
| 스왑백 | `swapback-*`, `swapback.html`, 옛 주소 `more.hopback-*`, `more.jump-*` |
| 모어스캔 | `more.scan-*` |
| 모어갈렌 | `more.galene-*` |
| 게임플레이박스 | `gameplaybox-*` |
| 단단 | `dandan-*` |
| 스크롤서포터 | `autoscroll-*` |
| 모어리딩 | `more.reading-*` |
| 공통 | `README.md`, `_config.yml`, `.githooks/` |
