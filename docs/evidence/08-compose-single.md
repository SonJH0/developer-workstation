# 08-compose-single

실제 실행 로그의 열람용 사본입니다. 터미널 색상·화면 제어문자만 제거했고 반복 진행 출력은 유지했습니다.

```text
Script started on 2026-11-04 09:49:15+09:00 [COMMAND="bash scripts/bonus-single.sh" TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="122" LINES="40"]
++ dirname scripts/bonus-single.sh
+ cd scripts/..
+ docker compose -f bonus/compose/compose.single.yaml config
name: workstation-bonus-single
services:
  web:
    image: workstation-bonus-single:v1
    networks:
      default: null
    build:
      context: /home/jaehyeong/developer-workstation
      dockerfile: Dockerfile
    ports:
      - mode: ingress
        host_ip: 127.0.0.1
        target: 80
        published: "8085"
        protocol: tcp
networks:
  default:
    name: workstation-bonus-single_default
+ docker compose -f bonus/compose/compose.single.yaml up -d --build --wait
[+] Building 0.0s (0/1)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
[+] Building 0.2s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.2s
[+] Building 0.4s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.3s
[+] Building 0.5s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.5s
[+] Building 0.7s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.6s
[+] Building 0.8s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.8s
[+] Building 1.0s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.9s
[+] Building 1.1s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.1s
[+] Building 1.3s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.2s
[+] Building 1.4s (2/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.4s
[+] Building 1.5s (3/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.4s
[+] Building 1.6s (7/8)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.4s
 => [internal] load .dockerignore                                                                                    0.0s
 => => transferring context: 68B                                                                                     0.0s
 => [internal] load build context                                                                                    0.0s
 => => transferring context: 452B                                                                                    0.0s
 => CACHED [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6  0.0s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                           0.0s
 => exporting to image                                                                                               0.1s
 => => exporting layers                                                                                              0.1s
[+] Building 1.7s (8/8)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.4s
 => [internal] load .dockerignore                                                                                    0.0s
 => => transferring context: 68B                                                                                     0.0s
 => [internal] load build context                                                                                    0.0s
 => => transferring context: 452B                                                                                    0.0s
 => CACHED [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6  0.0s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                           0.0s
 => exporting to image                                                                                               0.2s
 => => exporting layers                                                                                              0.1s
 => => exporting manifest sha256:35617190cc757d7b12b8cb722fb725d19bc3939031a56dc1da95cbbe5dd0c379                    0.0s
 => => exporting config sha256:9198a188c087b4d9868fb870462aefb3a3a58603f53c694d31f2cf2adada386a                      0.0s
 => => exporting attestation manifest sha256:b5a92c2352c0184a45f23726d393e4992b2cc660f35216fe8b99db83f8e0730c        0.0s
 => => exporting manifest list sha256:c62d1d52b3dedbc2efcf7010bb1a58a10161bd152b22de6e6e23dd7a61a8ce90               0.0s
 => => naming to docker.io/library/workstation-bonus-single:v1                                                       0.0s
 => => unpacking to docker.io/library/workstation-bonus-single:v1                                                    0.0s
[+] Building 1.8s (9/9) FINISHED                                                                                          
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 547B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               1.4s
 => [internal] load .dockerignore                                                                                    0.0s
 => => transferring context: 68B                                                                                     0.0s
 => [internal] load build context                                                                                    0.0s
 => => transferring context: 452B                                                                                    0.0s
 => CACHED [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6  0.0s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                           0.0s
 => exporting to image                                                                                               0.2s
 => => exporting layers                                                                                              0.1s
 => => exporting manifest sha256:35617190cc757d7b12b8cb722fb725d19bc3939031a56dc1da95cbbe5dd0c379                    0.0s
 => => exporting config sha256:9198a188c087b4d9868fb870462aefb3a3a58603f53c694d31f2cf2adada386a                      0.0s
 => => exporting attestation manifest sha256:b5a92c2352c0184a45f23726d393e4992b2cc660f35216fe8b99db83f8e0730c        0.0s
 => => exporting manifest list sha256:c62d1d52b3dedbc2efcf7010bb1a58a10161bd152b22de6e6e23dd7a61a8ce90               0.0s
 => => naming to docker.io/library/workstation-bonus-single:v1                                                       0.0s
 => => unpacking to docker.io/library/workstation-bonus-single:v1                                                    0.0s
 => resolving provenance for metadata file                                                                           0.0s
[+] up 2/3
 ✔ Image workstation-bonus-single:v1        Built                                                                     1.9s
 ✔ Network workstation-bonus-single_default Created                                                                   0.0s
 ⠋ Container workstation-bonus-single-web-1 Creating                                                                  0.0s



 ⠙ Container workstation-bonus-single-web-1 Starting                                                                  0.1s



 ⠹ Container workstation-bonus-single-web-1 Starting                                                                  0.2s



 ⠸ Container workstation-bonus-single-web-1 Waiting                                                                   0.3s



 ⠼ Container workstation-bonus-single-web-1 Waiting                                                                   0.4s



 ⠴ Container workstation-bonus-single-web-1 Waiting                                                                   0.5s



 ⠦ Container workstation-bonus-single-web-1 Waiting                                                                   0.6s



 ⠧ Container workstation-bonus-single-web-1 Waiting                                                                   0.7s
[+] up 3/3


 ✔ Container workstation-bonus-single-web-1 Healthy                                                                   0.7s
+ docker compose -f bonus/compose/compose.single.yaml ps
NAME                             IMAGE                         COMMAND                  SERVICE   CREATED                  STATUS                  PORTS
workstation-bonus-single-web-1   workstation-bonus-single:v1   "/docker-entrypoint.…"   web       Less than a second ago   Up Less than a second   127.0.0.1:8085->80/tcp
+ docker compose -f bonus/compose/compose.single.yaml exec -T web wget -qO- http://127.0.0.1:80
<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>개발 워크스테이션</title>
</head>
<body>
  <h1>나의 개발 워크스테이션</h1>
  <p>작성자: jaehyeong</p>
  <p>터미널, Docker, Git으로 재현 가능한 개발 환경 만들기</p>
  <p>Version 2</p>
</body>
</html>
+ docker compose -f bonus/compose/compose.single.yaml logs --no-color --tail 20
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 35
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 36
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 37
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 38
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 39
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 40
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 41
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 42
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 43
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 44
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 45
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 46
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 47
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 48
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 49
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 50
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 51
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 52
web-1  | 2026/11/04 00:49:18 [notice] 1#1: start worker process 53
web-1  | 127.0.0.1 - - [04/Nov/2026:00:49:18 +0000] "GET / HTTP/1.1" 200 382 "-" "Wget" "-"

Script done on 2026-11-04 09:49:18+09:00 [COMMAND_EXIT_CODE="0"]
Script started on 2026-11-04 09:50:40+09:00 [COMMAND="bash -xc "docker compose -f bonus/compose/compose.single.yaml down && docker compose -f bonus/compose/compose.single.yaml ps -a"" TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="122" LINES="46"]
+ docker compose -f bonus/compose/compose.single.yaml down
[+] down 0/1
 ⠋ Container workstation-bonus-single-web-1 Stopping                                                                  0.1s

 ⠙ Container workstation-bonus-single-web-1 Stopping                                                                  0.2s

 ⠹ Container workstation-bonus-single-web-1 Stopping                                                                  0.3s

 ⠸ Container workstation-bonus-single-web-1 Removing                                                                  0.4s
[+] down 1/2
 ✔ Container workstation-bonus-single-web-1 Removed                                                                   0.4s
 ⠋ Network workstation-bonus-single_default Removing                                                                  0.1s


 ⠙ Network workstation-bonus-single_default Removing                                                                  0.2s
[+] down 2/2

 ✔ Network workstation-bonus-single_default Removed                                                                   0.2s
+ docker compose -f bonus/compose/compose.single.yaml ps -a
NAME      IMAGE     COMMAND   SERVICE   CREATED   STATUS    PORTS

Script done on 2026-11-04 09:50:41+09:00 [COMMAND_EXIT_CODE="0"]

```

