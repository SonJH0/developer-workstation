# 10-compose-env

실제 실행 로그의 열람용 사본입니다. 터미널 색상·화면 제어문자만 제거했고 반복 진행 출력은 유지했습니다.

```text
Script started on 2026-11-04 09:52:49+09:00 [COMMAND="bash scripts/bonus-env.sh" TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="122" LINES="46"]
++ dirname scripts/bonus-env.sh
+ cd scripts/..
+ docker compose -f bonus/compose/compose.env.yaml build
[+] Building 0.0s (0/1)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
[+] Building 0.1s (3/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 541B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.0s
[+] Building 0.2s (7/8)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 541B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.0s
 => [internal] load .dockerignore                                                                                    0.0s
 => => transferring context: 68B                                                                                     0.0s
 => [internal] load build context                                                                                    0.0s
 => => transferring context: 59B                                                                                     0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => CACHED [2/2] COPY app/ /usr/share/nginx/html/                                                                    0.0s
 => exporting to image                                                                                               0.1s
 => => exporting layers                                                                                              0.0s
 => => exporting manifest sha256:f617bbc84dae9de60b3bdc617d6851ce90ff2ab80817216e15387b2a74c70326                    0.0s
 => => exporting config sha256:e92f914490d0a10c87606d6075a542e11d092b3cae2f4acf7e6bfe02f65ee674                      0.0s
 => => exporting attestation manifest sha256:08f962800b54cf269a935a027be972a0ac15536c58b064bb1b2e17e85ac831f1        0.0s
 => => exporting manifest list sha256:45448e5b603b9628156aff2fb272cbcdb1587619a96c9dee1c9aeb7f12873034               0.0s
[+] Building 0.3s (8/9)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 541B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.0s
 => [internal] load .dockerignore                                                                                    0.0s
 => => transferring context: 68B                                                                                     0.0s
 => [internal] load build context                                                                                    0.0s
 => => transferring context: 59B                                                                                     0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => CACHED [2/2] COPY app/ /usr/share/nginx/html/                                                                    0.0s
 => exporting to image                                                                                               0.1s
 => => exporting layers                                                                                              0.0s
 => => exporting manifest sha256:f617bbc84dae9de60b3bdc617d6851ce90ff2ab80817216e15387b2a74c70326                    0.0s
 => => exporting config sha256:e92f914490d0a10c87606d6075a542e11d092b3cae2f4acf7e6bfe02f65ee674                      0.0s
 => => exporting attestation manifest sha256:08f962800b54cf269a935a027be972a0ac15536c58b064bb1b2e17e85ac831f1        0.0s
 => => exporting manifest list sha256:45448e5b603b9628156aff2fb272cbcdb1587619a96c9dee1c9aeb7f12873034               0.0s
 => => naming to docker.io/library/workstation-bonus-env:v1                                                          0.0s
 => => unpacking to docker.io/library/workstation-bonus-env:v1                                                       0.0s
 => resolving provenance for metadata file                                                                           0.0s
[+] Building 0.3s (9/9) FINISHED                                                                                          
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 541B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.0s
 => [internal] load .dockerignore                                                                                    0.0s
 => => transferring context: 68B                                                                                     0.0s
 => [internal] load build context                                                                                    0.0s
 => => transferring context: 59B                                                                                     0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d6094767a  0.0s
 => CACHED [2/2] COPY app/ /usr/share/nginx/html/                                                                    0.0s
 => exporting to image                                                                                               0.1s
 => => exporting layers                                                                                              0.0s
 => => exporting manifest sha256:f617bbc84dae9de60b3bdc617d6851ce90ff2ab80817216e15387b2a74c70326                    0.0s
 => => exporting config sha256:e92f914490d0a10c87606d6075a542e11d092b3cae2f4acf7e6bfe02f65ee674                      0.0s
 => => exporting attestation manifest sha256:08f962800b54cf269a935a027be972a0ac15536c58b064bb1b2e17e85ac831f1        0.0s
 => => exporting manifest list sha256:45448e5b603b9628156aff2fb272cbcdb1587619a96c9dee1c9aeb7f12873034               0.0s
 => => naming to docker.io/library/workstation-bonus-env:v1                                                          0.0s
 => => unpacking to docker.io/library/workstation-bonus-env:v1                                                       0.0s
 => resolving provenance for metadata file                                                                           0.0s
[+] build 1/1
 ✔ Image workstation-bonus-env:v1 Built                                                                               0.4s
+ for port in 80 8088
+ export NGINX_PORT=80
+ NGINX_PORT=80
+ docker compose -f bonus/compose/compose.env.yaml config
name: workstation-bonus-env
services:
  web:
    environment:
      NGINX_PORT: "80"
    image: workstation-bonus-env:v1
    networks:
      default: null
    volumes:
      - type: bind
        source: /home/jaehyeong/developer-workstation/bonus/compose/templates/default.conf.template
        target: /etc/nginx/templates/default.conf.template
        read_only: true
        bind: {}
    build:
      context: /home/jaehyeong/developer-workstation
      dockerfile: Dockerfile
    healthcheck:
      test:
        - CMD-SHELL
        - wget -q --spider http://127.0.0.1:$$NGINX_PORT
      timeout: 3s
      interval: 2s
      retries: 15
    ports:
      - mode: ingress
        host_ip: 127.0.0.1
        target: 80
        published: "8087"
        protocol: tcp
networks:
  default:
    name: workstation-bonus-env_default
+ docker compose -f bonus/compose/compose.env.yaml up -d --force-recreate --wait
[+] up 1/2
 ✔ Network workstation-bonus-env_default Created                                                                      0.0s
 ⠋ Container workstation-bonus-env-web-1 Creating                                                                     0.0s


 ⠙ Container workstation-bonus-env-web-1 Starting                                                                     0.1s


 ⠹ Container workstation-bonus-env-web-1 Waiting                                                                      0.2s


 ⠸ Container workstation-bonus-env-web-1 Waiting                                                                      0.3s


 ⠼ Container workstation-bonus-env-web-1 Waiting                                                                      0.4s


 ⠴ Container workstation-bonus-env-web-1 Waiting                                                                      0.5s


 ⠦ Container workstation-bonus-env-web-1 Waiting                                                                      0.6s


 ⠧ Container workstation-bonus-env-web-1 Waiting                                                                      0.7s


 ⠇ Container workstation-bonus-env-web-1 Waiting                                                                      0.8s


 ⠏ Container workstation-bonus-env-web-1 Waiting                                                                      0.9s


 ⠋ Container workstation-bonus-env-web-1 Waiting                                                                      1.0s


 ⠙ Container workstation-bonus-env-web-1 Waiting                                                                      1.1s


 ⠹ Container workstation-bonus-env-web-1 Waiting                                                                      1.2s


 ⠸ Container workstation-bonus-env-web-1 Waiting                                                                      1.3s


 ⠼ Container workstation-bonus-env-web-1 Waiting                                                                      1.4s


 ⠴ Container workstation-bonus-env-web-1 Waiting                                                                      1.5s


 ⠦ Container workstation-bonus-env-web-1 Waiting                                                                      1.6s


 ⠧ Container workstation-bonus-env-web-1 Waiting                                                                      1.7s


 ⠇ Container workstation-bonus-env-web-1 Waiting                                                                      1.8s


 ⠏ Container workstation-bonus-env-web-1 Waiting                                                                      1.9s


 ⠋ Container workstation-bonus-env-web-1 Waiting                                                                      2.0s


 ⠙ Container workstation-bonus-env-web-1 Waiting                                                                      2.1s


 ⠹ Container workstation-bonus-env-web-1 Waiting                                                                      2.2s


 ⠸ Container workstation-bonus-env-web-1 Waiting                                                                      2.3s


 ⠼ Container workstation-bonus-env-web-1 Waiting                                                                      2.4s


 ⠴ Container workstation-bonus-env-web-1 Waiting                                                                      2.5s


 ⠦ Container workstation-bonus-env-web-1 Waiting                                                                      2.6s
[+] up 2/2

 ✔ Container workstation-bonus-env-web-1 Healthy                                                                      2.7s
+ docker compose -f bonus/compose/compose.env.yaml ps
NAME                          IMAGE                      COMMAND                  SERVICE   CREATED         STATUS                   PORTS
workstation-bonus-env-web-1   workstation-bonus-env:v1   "/docker-entrypoint.…"   web       2 seconds ago   Up 2 seconds (healthy)   127.0.0.1:8087->80/tcp
+ docker compose -f bonus/compose/compose.env.yaml exec -T web printenv NGINX_PORT
80
+ docker compose -f bonus/compose/compose.env.yaml exec -T web cat /etc/nginx/conf.d/default.conf
server {
    listen 80;
    server_name localhost;

    location / {
        root /usr/share/nginx/html;
        index index.html;
    }
}
+ docker compose -f bonus/compose/compose.env.yaml exec -T web wget -qO- http://127.0.0.1:80
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
+ docker compose -f bonus/compose/compose.env.yaml port web 80
127.0.0.1:8087
+ for port in 80 8088
+ export NGINX_PORT=8088
+ NGINX_PORT=8088
+ docker compose -f bonus/compose/compose.env.yaml config
name: workstation-bonus-env
services:
  web:
    environment:
      NGINX_PORT: "8088"
    image: workstation-bonus-env:v1
    networks:
      default: null
    volumes:
      - type: bind
        source: /home/jaehyeong/developer-workstation/bonus/compose/templates/default.conf.template
        target: /etc/nginx/templates/default.conf.template
        read_only: true
        bind: {}
    build:
      context: /home/jaehyeong/developer-workstation
      dockerfile: Dockerfile
    healthcheck:
      test:
        - CMD-SHELL
        - wget -q --spider http://127.0.0.1:$$NGINX_PORT
      timeout: 3s
      interval: 2s
      retries: 15
    ports:
      - mode: ingress
        host_ip: 127.0.0.1
        target: 8088
        published: "8087"
        protocol: tcp
networks:
  default:
    name: workstation-bonus-env_default
+ docker compose -f bonus/compose/compose.env.yaml up -d --force-recreate --wait
[+] up 0/1
 ⠋ Container workstation-bonus-env-web-1 Recreate                                                                     0.1s

 ⠙ Container workstation-bonus-env-web-1 Recreate                                                                     0.2s

 ⠹ Container workstation-bonus-env-web-1 Recreate                                                                     0.3s

 ⠸ Container workstation-bonus-env-web-1 Recreate                                                                     0.4s
[+] up 1/1
 ✔ Container workstation-bonus-env-web-1 Recreated                                                                    0.5s
[+] up 0/1
 ⠴ Container workstation-bonus-env-web-1 Starting                                                                     0.6s

 ⠦ Container workstation-bonus-env-web-1 Waiting                                                                      0.7s

 ⠧ Container workstation-bonus-env-web-1 Waiting                                                                      0.8s

 ⠇ Container workstation-bonus-env-web-1 Waiting                                                                      0.9s

 ⠏ Container workstation-bonus-env-web-1 Waiting                                                                      1.0s

 ⠋ Container workstation-bonus-env-web-1 Waiting                                                                      1.1s

 ⠙ Container workstation-bonus-env-web-1 Waiting                                                                      1.2s

 ⠹ Container workstation-bonus-env-web-1 Waiting                                                                      1.3s

 ⠸ Container workstation-bonus-env-web-1 Waiting                                                                      1.4s

 ⠼ Container workstation-bonus-env-web-1 Waiting                                                                      1.5s

 ⠴ Container workstation-bonus-env-web-1 Waiting                                                                      1.6s

 ⠦ Container workstation-bonus-env-web-1 Waiting                                                                      1.7s

 ⠧ Container workstation-bonus-env-web-1 Waiting                                                                      1.8s

 ⠇ Container workstation-bonus-env-web-1 Waiting                                                                      1.9s

 ⠏ Container workstation-bonus-env-web-1 Waiting                                                                      2.0s

 ⠋ Container workstation-bonus-env-web-1 Waiting                                                                      2.1s

 ⠙ Container workstation-bonus-env-web-1 Waiting                                                                      2.2s

 ⠹ Container workstation-bonus-env-web-1 Waiting                                                                      2.3s

 ⠸ Container workstation-bonus-env-web-1 Waiting                                                                      2.4s

 ⠼ Container workstation-bonus-env-web-1 Waiting                                                                      2.5s

 ⠴ Container workstation-bonus-env-web-1 Waiting                                                                      2.6s

 ⠦ Container workstation-bonus-env-web-1 Waiting                                                                      2.7s

 ⠧ Container workstation-bonus-env-web-1 Waiting                                                                      2.8s

 ⠇ Container workstation-bonus-env-web-1 Waiting                                                                      2.9s

 ⠏ Container workstation-bonus-env-web-1 Waiting                                                                      3.0s

 ⠋ Container workstation-bonus-env-web-1 Waiting                                                                      3.1s
[+] up 1/1
 ✔ Container workstation-bonus-env-web-1 Healthy                                                                      3.1s
+ docker compose -f bonus/compose/compose.env.yaml ps
NAME                          IMAGE                      COMMAND                  SERVICE   CREATED         STATUS                   PORTS
workstation-bonus-env-web-1   workstation-bonus-env:v1   "/docker-entrypoint.…"   web       3 seconds ago   Up 2 seconds (healthy)   127.0.0.1:8087->8088/tcp
+ docker compose -f bonus/compose/compose.env.yaml exec -T web printenv NGINX_PORT
8088
+ docker compose -f bonus/compose/compose.env.yaml exec -T web cat /etc/nginx/conf.d/default.conf
server {
    listen 8088;
    server_name localhost;

    location / {
        root /usr/share/nginx/html;
        index index.html;
    }
}
+ docker compose -f bonus/compose/compose.env.yaml exec -T web wget -qO- http://127.0.0.1:8088
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
+ docker compose -f bonus/compose/compose.env.yaml port web 8088
127.0.0.1:8087
+ docker compose -f bonus/compose/compose.env.yaml logs --no-color --tail 10
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 52
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 53
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 54
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 55
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 56
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 57
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 58
web-1  | 2026/11/04 00:52:53 [notice] 1#1: start worker process 59
web-1  | 127.0.0.1 - - [04/Nov/2026:00:52:56 +0000] "GET / HTTP/1.1" 200 382 "-" "Wget" "-"
web-1  | 127.0.0.1 - - [04/Nov/2026:00:52:56 +0000] "GET / HTTP/1.1" 200 382 "-" "Wget" "-"

Script done on 2026-11-04 09:52:56+09:00 [COMMAND_EXIT_CODE="0"]
Script started on 2026-11-04 09:54:43+09:00 [COMMAND="bash -xc "NGINX_PORT=8088 docker compose -f bonus/compose/compose.env.yaml down && NGINX_PORT=8088 docker compose -f bonus/compose/compose.env.yaml ps -a"" TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="122" LINES="46"]
+ NGINX_PORT=8088
+ docker compose -f bonus/compose/compose.env.yaml down
[+] down 0/1
 ⠋ Container workstation-bonus-env-web-1 Stopping                                                                     0.1s

 ⠙ Container workstation-bonus-env-web-1 Stopping                                                                     0.2s

 ⠹ Container workstation-bonus-env-web-1 Stopping                                                                     0.3s
[+] down 1/2
 ✔ Container workstation-bonus-env-web-1 Removed                                                                      0.4s
 ⠋ Network workstation-bonus-env_default Removing                                                                     0.0s


 ⠙ Network workstation-bonus-env_default Removing                                                                     0.1s


 ⠹ Network workstation-bonus-env_default Removing                                                                     0.2s
[+] down 2/2

 ✔ Network workstation-bonus-env_default Removed                                                                      0.3s
+ NGINX_PORT=8088
+ docker compose -f bonus/compose/compose.env.yaml ps -a
NAME      IMAGE     COMMAND   SERVICE   CREATED   STATUS    PORTS

Script done on 2026-11-04 09:54:43+09:00 [COMMAND_EXIT_CODE="0"]

```

