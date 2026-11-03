# 트러블슈팅

## 1. Docker 소켓 접근 거부 — 실제 발생

- 문제: Docker 버전은 출력되지만 `docker info`에서 `/var/run/docker.sock` permission denied.
- 원인 가설: 현재 로그인 세션의 그룹에 소켓 접근 권한이 반영되지 않았다.
- 확인: `id`에는 docker가 없고, `getent group docker`에는 jaehyeong이 있었다. `ls -l /var/run/docker.sock`은 root:docker와 660 권한을 표시했다. `sudo docker info --format '{{.ServerVersion}}'`는 29.9.2로 성공했다.
- 해결 시도: `newgrp docker`는 미설치로 실패. 소켓 권한을 모두에게 열지 않고 `su - jaehyeong`으로 새 로그인 쉘을 열었다.
- 재검증: `id`에 docker 그룹이 나타나고 일반 권한의 서버 버전 조회와 `docker ps`가 성공했다.

```bash
id
ls -l /var/run/docker.sock
getent group docker
sudo docker info --format '{{.ServerVersion}}'
su - jaehyeong
cd ~/developer-workstation
id
docker info --format 'Server version: {{.ServerVersion}}'
docker ps
```

[전체 실제 출력](evidence/04-docker-permission.md), [해결 화면](images/docker-permission-resolved.png).

docker 그룹의 엔진 접근 권한은 강하므로 이번 실습 계정에만 적용했다. 이미 등록된 계정을 다시 추가하거나 chmod 666으로 소켓을 변경하지 않았다.

## 2. 호스트 포트 중복 — 의도적 재현 실험

- 문제: 기존 웹 서버가 127.0.0.1:8080을 사용하는 상태에서 같은 주소·포트로 다른 컨테이너를 실행했다.
- 원인 가설: 호스트 포트를 두 컨테이너가 동시에 게시하려 했다.
- 확인: 기존 `docker port`는 8080을 표시하고 실행 오류는 `port is already allocated`였다. 실패한 컨테이너는 Created 상태였다.
- 해결: 실패한 테스트 컨테이너만 삭제하고 호스트 포트를 8082로 바꿨다. 기존 웹 서버는 유지했다.
- 재검증: 테스트 컨테이너가 Up으로 바뀌고 `80/tcp -> 127.0.0.1:8082`가 출력됐다.

```bash
docker port workstation-web
docker run -d --name workstation-port-test -p 127.0.0.1:8080:80 workstation-web:v1
docker ps -a --filter name=workstation-port-test
docker rm workstation-port-test
docker run -d --name workstation-port-test -p 127.0.0.1:8082:80 workstation-web:v1
docker ps --filter name=workstation-port-test
docker port workstation-port-test
```

[전체 실제 출력](evidence/04-docker-permission.md), [오류와 해결 화면](images/port-conflict.png).

## 추가 관찰

NGINX의 favicon.ico 404는 아이콘 파일 부재였고 페이지 GET /는 200으로 성공했다. 설치 전의 PowerShell에서 docker 명령을 찾지 못한 현상은 경로 갱신 지연 가능성이 있었지만 해당 Windows 창에서 재검증하지 않았으므로 확정된 해결 사례에 포함하지 않았다.
