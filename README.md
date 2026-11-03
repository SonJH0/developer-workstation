# 나의 개발 워크스테이션

터미널·Linux 파일 권한·Docker·Git을 직접 사용해 개발 작업실을 구성하고, 명령과 출력으로 동작을 검증한 개인 프로젝트입니다. 작성자: 손재형 / GitHub: SonJH0.

## 실행 환경

| 항목 | 실제 확인 결과 |
|---|---|
| 호스트 OS | Windows 11 Pro 64비트 / 10.0.26300 |
| 터미널 | Windows Terminal, Windows PowerShell 5.1 및 Ubuntu Bash |
| Linux | WSL2 / Ubuntu 26.04.1 LTS |
| 쉘 | /bin/bash / GNU Bash 5.3.9 |
| Linux 커널 | 6.18.54.1-microsoft-standard-WSL2 |
| Docker Desktop | 4.98.0 / WSL Integration 활성화 |
| Docker CLI·서버 | 29.9.2 |
| Git | Ubuntu Git 2.53.0 |
| VS Code | Windows 1.143.1 / WSL 확장 0.104.7 |
| 컨테이너 사용자 공간 | ubuntu:24.04 → 실습 출력 24.04.5 LTS |

사용자 PC의 프로젝트 위치는 `/home/jaehyeong/developer-workstation`입니다. 다른 PC에서는 자신의 Linux 홈 디렉토리를 사용합니다. 권한 실습은 Windows 드라이브인 `/mnt/c` 대신 Linux 홈에서 진행했습니다.

## 수행 항목과 증거

완료 표시는 제출자가 제공한 실제 로그·화면에서 확인한 실습을 뜻합니다. 추가 재현 스크립트도 사용자 PC에서 실행해 종료 코드 0을 확인했습니다.

| 항목 | 수행 | 명령·실제 출력 |
|---|---|---|
| 환경 확인 | 완료 | [환경 로그](docs/evidence/01-environment.md) |
| 위치·목록·이동·생성·복사·이름 변경·삭제·내용·빈 파일 | 완료 | [터미널 로그](docs/evidence/02-terminal.md) |
| 파일 1개·디렉토리 1개 권한 변경 | 완료 | [권한 로그](docs/evidence/03-permissions.md) |
| Docker 버전·데몬 확인 | 완료 | [Docker 전체 로그](docs/evidence/04-docker-permission.md) |
| 이미지 다운로드·목록 / 컨테이너 실행·중지·재실행·목록 | 완료 | 같은 Docker 로그의 pull/run/stop/start/ps 구간 |
| 로그·리소스 조회 | 완료 | 같은 로그의 logs/stats 구간 |
| hello-world·Ubuntu 내부 명령 | 완료 | 같은 로그의 hello-world/exec 구간 |
| exec 쉘 종료와 주 프로세스 종료 비교 | 완료 | [컨테이너 생명주기 화면](docs/images/container-lifecycle.png) |
| 직접 작성한 Dockerfile·커스텀 이미지 | 완료 | [Dockerfile](Dockerfile), [HTML](app/index.html), Docker 로그의 build 구간 |
| 포트 매핑·브라우저 접속 | 완료 | [8080 접속](docs/images/web-8080.png), [포트·로그](docs/images/web-build-port-logs.png) |
| 바인드 마운트 변경 반영 | 완료 | [변경 전](docs/images/bind-before.png), [변경 후](docs/images/bind-after.png), [명령·출력](docs/images/bind-terminal.png) |
| 볼륨 / 컨테이너 삭제 후 데이터 유지 | 완료 | [명령·전후 출력](docs/images/volume-persistence.png) |
| Git 사용자·기본 브랜치 | 완료 | [마스킹한 설정](docs/evidence/05-git-config-masked.md) |
| VS Code·GitHub 로그인·원격 연결 | 완료 | [원격 로그](docs/evidence/06-github-connection.md), [VS Code](docs/images/vscode-wsl.png), [게시 성공](docs/images/github-publish.png), [저장소](docs/images/github-repository.png) |
| 트러블슈팅 2건 | 완료 | [문제→가설→확인→해결→재검증](docs/troubleshooting.md) |

[전체 화면·로그 모음](docs/evidence/README.md). `docs/logs/`는 실제 실행 기록의 텍스트 사본이며, 열람을 위해 터미널 제어문자와 자동 삽입 메타데이터를 제거했습니다. 중복 출력은 유지했습니다. `docs/evidence/`에서는 같은 내용을 코드블록으로 제공합니다. 최초 환경 로그의 종료값 127은 당시 Docker 명령이 없었던 결과이며 이후 해결했습니다. GitHub 연결 로그는 당시 첫 커밋 기준 스냅샷입니다.

## 직접 만든 이미지

기존 베이스는 `nginx:stable-alpine`입니다. NGINX의 기본 환영 페이지 대신 직접 만든 소개 HTML을 `/usr/share/nginx/html/`에 복사했습니다. `EXPOSE 80`은 서비스 포트 설명이며 실제 공개는 `docker run -p`에서 설정합니다. `.dockerignore`는 빌드에 필요한 HTML과 Dockerfile만 포함하도록 합니다.

```dockerfile
FROM nginx:stable-alpine
COPY app/ /usr/share/nginx/html/
EXPOSE 80
```

```bash
docker build -t workstation-web:v1 .
docker run -d --name workstation-web -p 127.0.0.1:8080:80 workstation-web:v1
docker port workstation-web
docker logs --tail 20 workstation-web
```

실제 결과: 빌드 완료, 컨테이너 Up, `80/tcp -> 127.0.0.1:8080`, 요청 `GET /` 응답 200. 브라우저는 `http://localhost:8080`으로 접속했습니다. favicon.ico의 404는 아이콘 미제공이며 본문 응답 200과 구별합니다.

`stable-alpine`과 `24.04`는 갱신 가능한 태그이므로 나중에 재빌드하면 베이스 버전이 달라질 수 있습니다. 원 실습의 빌드 기록과 다운로드 digest는 Docker 로그에 있습니다. 동일 바이트가 필요한 경우 완전한 이미지 digest를 따로 확보해 고정해야 합니다. 화면에 잘린 digest를 임의로 복원하지 않았습니다.

## Version 1과 Version 2의 차이

최초 이미지에는 Version 1을 복사했습니다. 이후 호스트 HTML을 Version 2로 수정했습니다. 저장소의 현재 HTML은 Version 2입니다. 따라서 현재 소스를 새로 빌드하면 처음부터 Version 2가 나오는 것이 정상입니다.

| 실행 방식 | 원 실습 포트 | 호스트 수정 후 |
|---|---|---|
| 이미지에 COPY한 HTML | 8080 | 기존 이미지의 Version 1 유지 |
| app 폴더를 바인드 마운트 | 8081 | 재빌드 없이 Version 2 반영 |

```bash
docker run -d --name workstation-bind -p 127.0.0.1:8081:80 \
  --mount type=bind,source="$(pwd)/app",target=/usr/share/nginx/html,readonly \
  workstation-web:v1
sed -i 's/Version 1/Version 2/' app/index.html
docker exec workstation-bind cat /usr/share/nginx/html/index.html
```

호스트 폴더를 연결하면 그 위치의 이미지 콘텐츠는 마운트에 가려집니다. readonly는 컨테이너 쪽 쓰기 제한이며 호스트의 편집을 막지 않습니다.

## 볼륨 데이터 영속성

```bash
docker volume create workstation-data
docker run --name volume-before \
  --mount type=volume,source=workstation-data,target=/data ubuntu:24.04 \
  sh -c 'echo "Saved by jaehyeong - persistence test" > /data/proof.txt; cat /data/proof.txt'
docker rm volume-before
docker ps -a --filter name=volume-before
docker run --name volume-after \
  --mount type=volume,source=workstation-data,target=/data ubuntu:24.04 \
  cat /data/proof.txt
```

실제 출력에서 첫 컨테이너 삭제가 확인됐고 새 컨테이너도 `Saved by jaehyeong - persistence test`를 출력했습니다. 컨테이너 재시작만 한 실험이 아니라 삭제 후 다른 컨테이너에 재연결한 실험입니다. 볼륨 경로는 Docker Desktop 엔진 내부 경로이며 WSL 홈 폴더와 동일한 경로가 아닙니다.

## 평가자 재현 절차

1. Docker Desktop을 실행하고 WSL2 Ubuntu 연동을 활성화합니다. Ubuntu 터미널에서 저장소를 복제합니다. 비공개 저장소는 허용된 GitHub 계정 접근 권한이 필요합니다.

```bash
git clone https://github.com/SonJH0/developer-workstation.git
cd developer-workstation
docker info --format '{{.ServerVersion}}'
```

2. 기존 실습과 충돌하지 않는 이름과 포트(8083·8084)를 사용하는 재현 스크립트를 실행합니다. `script`가 있으면 명령·출력도 기록할 수 있습니다.

```bash
script -q -c 'bash scripts/reproduce.sh' docs/logs/07-reproduction.txt
```

이 스크립트는 임시 폴더에 Version 1을 만들고 빌드합니다. COPY와 바인드 마운트 결과를 각각 확인한 뒤 임시 HTML만 Version 2로 바꿉니다. 저장소 HTML은 수정하지 않습니다. 이어서 별도 볼륨으로 삭제 전후 데이터를 비교합니다. 마지막 입력 대기에서 브라우저의 `http://localhost:8083`(Version 1), `http://localhost:8084`(Version 2)를 확인·캡처하고 Enter를 누릅니다. 테스트 컨테이너는 종료·삭제되며 볼륨은 유지합니다.

스크립트의 이름이 이미 사용 중이거나 8083·8084가 점유됐으면 실행이 중단됩니다. 기존 서비스를 강제 삭제하지 말고 충돌 자원을 확인합니다. 중간 실패 시 만들어진 테스트 컨테이너가 남을 수 있습니다. 아래 정리 절차로 이 스크립트가 만든 자원만 정리한 뒤 재시도합니다. 외부 이미지 다운로드에는 네트워크가 필요합니다.

3. 사용자 PC에서 재현 스크립트를 실행했습니다. 8083의 Version 1과 8084의 Version 2를 주소창 포함 화면으로 확인했고, 볼륨 데이터 재사용과 테스트 컨테이너 정리 후 `COMMAND_EXIT_CODE="0"`을 확인했습니다. [추가 재현 결과](docs/evidence/07-reproduction.md)를 참고합니다.

## 정리 방법

기존 실습 컨테이너는 실습 확인 후 다음과 같이 종료할 수 있습니다. 종료와 삭제는 다릅니다.

```bash
docker stop workstation-web workstation-bind workstation-port-test workstation-ubuntu
```

재현 스크립트가 중간 실패한 경우, 아래 이름이 이번 스크립트의 자원인지 `docker ps -a`로 확인한 뒤 정리합니다.

```bash
docker rm -f workstation-review-web workstation-review-bind workstation-review-before workstation-review-after
```

해당 이름이 없다는 오류는 이미 정리된 대상에서 발생할 수 있습니다. 아래 명령은 저장된 검증 데이터를 삭제합니다. 데이터 보존이 필요하면 실행하지 않습니다.

```bash
docker volume rm workstation-review-data
# 원 실습의 볼륨은 연결 컨테이너 volume-after를 삭제한 뒤 별도로 삭제
# docker rm volume-after
# docker volume rm workstation-data
```

## 배운 개념

- 절대 경로는 `/`부터 전체 위치를 적습니다. 상대 경로는 현재 위치를 기준으로 합니다. 예: `/home/jaehyeong/developer-workstation/app`과 프로젝트 내부의 `app`.
- 파일 권한은 소유자·그룹·기타 사용자 순서입니다. r=4, w=2, x=1의 합으로 표기합니다. 644는 rw-/r--/r--, 755는 rwx/r-x/r-x입니다. 디렉토리의 r은 목록 열람, w는 항목 생성·삭제 등에 관한 권한, x는 탐색·내부 접근 권한이며 작업별로 조합이 필요합니다.
- 이미지와 컨테이너는 분리됩니다. hello-world는 실행 종료 후에도 이미지와 종료된 컨테이너가 남았습니다.
- `exec`는 실행 중인 컨테이너에 별도 프로세스를 만듭니다. `attach`는 주 프로세스의 입출력에 연결합니다. 이번 실제 비교는 exec 쉘 종료와 bash 주 프로세스 종료이며 attach 직접 실습은 하지 않았습니다.
- 포트 매핑은 호스트 요청을 컨테이너 서비스 포트에 전달합니다. 서로 다른 컨테이너는 내부 80 포트를 같이 사용할 수 있지만 같은 호스트 IP·포트를 동시에 게시할 수는 없습니다.
- 바인드 마운트는 호스트의 지정 경로를 연결합니다. 볼륨은 Docker가 관리하는 저장 공간이며 컨테이너 삭제와 별개로 유지할 수 있습니다.
- Git은 로컬 변경 이력, GitHub는 원격 저장·협업 플랫폼입니다. 작성자 설정은 로그인 인증과 다릅니다. 커밋 후 push해야 원격에 반영됩니다.

[내가 수행한 과정과 설명 연습](docs/learning-notes.md)

## 제출 전 남은 확인

- [ ] 이 문서·이미지·정리한 로그를 로컬 저장소에 적용 후 커밋·push
- [x] 사용자 PC에서 추가 재현 스크립트 실행 및 결과 검토
- [ ] GitHub에서 README 이미지·로그 링크 정상 열림 확인
- [ ] 평가자가 접근 가능하도록 공개 또는 과제 규칙에 따른 접근 권한 설정

Docker·GitHub 인증용 비밀번호·토큰·개인키는 기록하지 않았습니다. 개인 이메일을 포함한 05-git.txt는 제외하고 마스킹한 설정 사본을 제공합니다. Git 커밋 자체에는 설정한 작성자 이메일이 들어갈 수 있으며 로그 마스킹과는 별개입니다. 보너스 Compose·SSH 실습은 수행하지 않았습니다.
