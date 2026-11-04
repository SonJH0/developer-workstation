# 09-compose-multi

실제 실행 로그의 열람용 사본입니다. 터미널 색상·화면 제어문자만 제거했고 반복 진행 출력은 유지했습니다.

```text
Script started on 2026-11-04 09:50:53+09:00 [COMMAND="bash scripts/bonus-multi.sh" TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="122" LINES="46"]
++ dirname scripts/bonus-multi.sh
+ cd scripts/..
+ docker compose -f bonus/compose/compose.multi.yaml config
name: workstation-bonus-multi
services:
  helper:
    image: nginx:stable-alpine
    networks:
      default: null
    healthcheck:
      test:
        - CMD
        - wget
        - -q
        - --spider
        - http://127.0.0.1:80
      timeout: 3s
      interval: 2s
      retries: 15
  web:
    image: workstation-bonus-multi:v1
    networks:
      default: null
    build:
      context: /home/jaehyeong/developer-workstation
      dockerfile: Dockerfile
    healthcheck:
      test:
        - CMD
        - wget
        - -q
        - --spider
        - http://127.0.0.1:80
      timeout: 3s
      interval: 2s
      retries: 15
    ports:
      - mode: ingress
        host_ip: 127.0.0.1
        target: 80
        published: "8086"
        protocol: tcp
networks:
  default:
    name: workstation-bonus-multi_default
+ docker compose -f bonus/compose/compose.multi.yaml up -d --build --wait
[+] up 0/1
 ⠋ Image nginx:stable-alpine Pulling                                                                                  0.1s

 ⠙ Image nginx:stable-alpine Pulling                                                                                  0.2s

 ⠹ Image nginx:stable-alpine Pulling                                                                                  0.3s

 ⠸ Image nginx:stable-alpine Pulling                                                                                  0.4s

 ⠼ Image nginx:stable-alpine Pulling                                                                                  0.5s

 ⠴ Image nginx:stable-alpine Pulling                                                                                  0.6s

 ⠦ Image nginx:stable-alpine Pulling                                                                                  0.7s

 ⠧ Image nginx:stable-alpine Pulling                                                                                  0.8s

 ⠇ Image nginx:stable-alpine Pulling                                                                                  0.9s

 ⠏ Image nginx:stable-alpine Pulling                                                                                  1.0s

 ⠋ Image nginx:stable-alpine Pulling                                                                                  1.1s

 ⠙ Image nginx:stable-alpine Pulling                                                                                  1.2s

 ⠹ Image nginx:stable-alpine Pulling                                                                                  1.3s

 ⠸ Image nginx:stable-alpine Pulling                                                                                  1.4s

 ⠼ Image nginx:stable-alpine Pulling                                                                                  1.5s

 ⠴ Image nginx:stable-alpine Pulling                                                                                  1.6s

 ⠦ Image nginx:stable-alpine Pulling                                                                                  1.7s

 ⠧ Image nginx:stable-alpine Pulling                                                                                  1.8s

 ⠇ Image nginx:stable-alpine Pulling                                                                                  1.9s

 ⠏ Image nginx:stable-alpine Pulling                                                                                  2.0s

 ⠋ Image nginx:stable-alpine Pulling                                                                                  2.1s

 ⠙ Image nginx:stable-alpine Pulling                                                                                  2.2s

 ⠹ Image nginx:stable-alpine Pulling                                                                                  2.3s

 ⠸ Image nginx:stable-alpine Pulling                                                                                  2.4s

 ⠼ Image nginx:stable-alpine Pulling                                                                                  2.5s
[+] up 1/1
 ✔ Image nginx:stable-alpine Pulled                                                                                   2.6s
[+] Building 0.0s (0/1)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
[+] Building 0.1s (3/3)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 545B                                                                                       0.0s
 => [internal] load build definition from Dockerfile                                                                 0.0s
 => => transferring dockerfile: 105B                                                                                 0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                               0.0s
[+] Building 0.2s (7/8)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 545B                                                                                       0.0s
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
 => => exporting manifest sha256:cda3fc5409b28cb107913d6a9183f3d3653120efa24f61acc9775af5706ec0db                    0.0s
 => => exporting config sha256:4d80d07ccedec270531f39ef71f328301677f3946f033dd74e62c995c470a231                      0.0s
 => => exporting attestation manifest sha256:8015b1796eace40e919fcd26d04cbc052c0fbd31d3fa1d7833b68a8d64bf22bf        0.0s
 => => exporting manifest list sha256:c4904b3b884e8e428b590ae3906c010e361e227aa9af3c6e59105ef19a1424fb               0.0s
 => => naming to docker.io/library/workstation-bonus-multi:v1                                                        0.0s
[+] Building 0.3s (8/9)                                                                                                   
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 545B                                                                                       0.0s
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
 => => exporting manifest sha256:cda3fc5409b28cb107913d6a9183f3d3653120efa24f61acc9775af5706ec0db                    0.0s
 => => exporting config sha256:4d80d07ccedec270531f39ef71f328301677f3946f033dd74e62c995c470a231                      0.0s
 => => exporting attestation manifest sha256:8015b1796eace40e919fcd26d04cbc052c0fbd31d3fa1d7833b68a8d64bf22bf        0.0s
 => => exporting manifest list sha256:c4904b3b884e8e428b590ae3906c010e361e227aa9af3c6e59105ef19a1424fb               0.0s
 => => naming to docker.io/library/workstation-bonus-multi:v1                                                        0.0s
 => => unpacking to docker.io/library/workstation-bonus-multi:v1                                                     0.0s
 => resolving provenance for metadata file                                                                           0.0s
[+] Building 0.3s (9/9) FINISHED                                                                                          
 => [internal] load local bake definitions                                                                           0.0s
 => => reading from stdin 545B                                                                                       0.0s
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
 => => exporting manifest sha256:cda3fc5409b28cb107913d6a9183f3d3653120efa24f61acc9775af5706ec0db                    0.0s
 => => exporting config sha256:4d80d07ccedec270531f39ef71f328301677f3946f033dd74e62c995c470a231                      0.0s
 => => exporting attestation manifest sha256:8015b1796eace40e919fcd26d04cbc052c0fbd31d3fa1d7833b68a8d64bf22bf        0.0s
 => => exporting manifest list sha256:c4904b3b884e8e428b590ae3906c010e361e227aa9af3c6e59105ef19a1424fb               0.0s
 => => naming to docker.io/library/workstation-bonus-multi:v1                                                        0.0s
 => => unpacking to docker.io/library/workstation-bonus-multi:v1                                                     0.0s
 => resolving provenance for metadata file                                                                           0.0s
[+] up 3/5
 ✔ Image nginx:stable-alpine                  Pulled                                                                  2.6s
 ✔ Image workstation-bonus-multi:v1           Built                                                                   0.4s
 ✔ Network workstation-bonus-multi_default    Created                                                                 0.0s
 ⠋ Container workstation-bonus-multi-web-1    Creating                                                                0.0s
 ⠋ Container workstation-bonus-multi-helper-1 Creating                                                                0.0s




 ⠙ Container workstation-bonus-multi-web-1    Starting                                                                0.1s
 ⠙ Container workstation-bonus-multi-helper-1 Starting                                                                0.1s
[+] up 4/5



 ⠹ Container workstation-bonus-multi-web-1    Starting                                                                0.2s
 ✔ Container workstation-bonus-multi-helper-1 Started                                                                 0.2s




 ⠸ Container workstation-bonus-multi-web-1    Starting                                                                0.3s

[+] up 3/5



 ⠼ Container workstation-bonus-multi-web-1    Waiting                                                                 0.4s
 ⠼ Container workstation-bonus-multi-helper-1 Waiting                                                                 0.4s




 ⠴ Container workstation-bonus-multi-web-1    Waiting                                                                 0.5s
 ⠴ Container workstation-bonus-multi-helper-1 Waiting                                                                 0.5s




 ⠦ Container workstation-bonus-multi-web-1    Waiting                                                                 0.6s
 ⠦ Container workstation-bonus-multi-helper-1 Waiting                                                                 0.6s




 ⠧ Container workstation-bonus-multi-web-1    Waiting                                                                 0.7s
 ⠧ Container workstation-bonus-multi-helper-1 Waiting                                                                 0.7s




 ⠇ Container workstation-bonus-multi-web-1    Waiting                                                                 0.8s
 ⠇ Container workstation-bonus-multi-helper-1 Waiting                                                                 0.8s




 ⠏ Container workstation-bonus-multi-web-1    Waiting                                                                 0.9s
 ⠏ Container workstation-bonus-multi-helper-1 Waiting                                                                 0.9s




 ⠋ Container workstation-bonus-multi-web-1    Waiting                                                                 1.0s
 ⠋ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.0s




 ⠙ Container workstation-bonus-multi-web-1    Waiting                                                                 1.1s
 ⠙ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.1s




 ⠹ Container workstation-bonus-multi-web-1    Waiting                                                                 1.2s
 ⠹ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.2s




 ⠸ Container workstation-bonus-multi-web-1    Waiting                                                                 1.3s
 ⠸ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.3s




 ⠼ Container workstation-bonus-multi-web-1    Waiting                                                                 1.4s
 ⠼ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.4s




 ⠴ Container workstation-bonus-multi-web-1    Waiting                                                                 1.5s
 ⠴ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.5s




 ⠦ Container workstation-bonus-multi-web-1    Waiting                                                                 1.6s
 ⠦ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.6s




 ⠧ Container workstation-bonus-multi-web-1    Waiting                                                                 1.7s
 ⠧ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.7s




 ⠇ Container workstation-bonus-multi-web-1    Waiting                                                                 1.8s
 ⠇ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.8s




 ⠏ Container workstation-bonus-multi-web-1    Waiting                                                                 1.9s
 ⠏ Container workstation-bonus-multi-helper-1 Waiting                                                                 1.9s




 ⠋ Container workstation-bonus-multi-web-1    Waiting                                                                 2.0s
 ⠋ Container workstation-bonus-multi-helper-1 Waiting                                                                 2.0s




 ⠙ Container workstation-bonus-multi-web-1    Waiting                                                                 2.1s
 ⠙ Container workstation-bonus-multi-helper-1 Waiting                                                                 2.1s




 ⠹ Container workstation-bonus-multi-web-1    Waiting                                                                 2.2s
 ⠹ Container workstation-bonus-multi-helper-1 Waiting                                                                 2.2s




 ⠸ Container workstation-bonus-multi-web-1    Waiting                                                                 2.3s
 ⠸ Container workstation-bonus-multi-helper-1 Waiting                                                                 2.3s
[+] up 4/5



 ⠼ Container workstation-bonus-multi-web-1    Waiting                                                                 2.4s
 ✔ Container workstation-bonus-multi-helper-1 Healthy                                                                 2.4s




 ⠴ Container workstation-bonus-multi-web-1    Waiting                                                                 2.5s





 ⠦ Container workstation-bonus-multi-web-1    Waiting                                                                 2.6s





 ⠧ Container workstation-bonus-multi-web-1    Waiting                                                                 2.7s





 ⠇ Container workstation-bonus-multi-web-1    Waiting                                                                 2.8s

[+] up 5/5



 ✔ Container workstation-bonus-multi-web-1    Healthy                                                                 2.9s

+ docker compose -f bonus/compose/compose.multi.yaml ps
NAME                               IMAGE                        COMMAND                  SERVICE   CREATED         STATUS                   PORTS
workstation-bonus-multi-helper-1   nginx:stable-alpine          "/docker-entrypoint.…"   helper    3 seconds ago   Up 2 seconds (healthy)   80/tcp
workstation-bonus-multi-web-1      workstation-bonus-multi:v1   "/docker-entrypoint.…"   web       3 seconds ago   Up 2 seconds (healthy)   127.0.0.1:8086->80/tcp
+ docker compose -f bonus/compose/compose.multi.yaml exec -T web wget -qO- http://helper:80
<!DOCTYPE html>
<html>
<head>
<title>Welcome to nginx!</title>
<style>
html { color-scheme: light dark; }
body { width: 35em; margin: 0 auto;
font-family: Tahoma, Verdana, Arial, sans-serif; }
</style>
</head>
<body>
<h1>Welcome to nginx!</h1>
<p>If you see this page, nginx is successfully installed and working.
Further configuration is required for the web server, reverse proxy, 
API gateway, load balancer, content cache, or other features.</p>

<p>For online documentation and support please refer to
<a href="https://nginx.org/">nginx.org</a>.<br/>
To engage with the community please visit
<a href="https://community.nginx.org/">community.nginx.org</a>.<br/>
For enterprise grade support, professional services, additional 
security features and capabilities please refer to
<a href="https://f5.com/nginx">f5.com/nginx</a>.</p>

<p><em>Thank you for using nginx.</em></p>
</body>
</html>
+ docker compose -f bonus/compose/compose.multi.yaml exec -T helper wget -qO- http://web:80
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
+ docker compose -f bonus/compose/compose.multi.yaml logs --no-color --tail 10
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 46
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 47
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 48
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 49
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 50
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 51
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 52
web-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 53
web-1  | 127.0.0.1 - - [04/Nov/2026:00:50:59 +0000] "GET / HTTP/1.1" 200 382 "-" "Wget" "-"
web-1  | 172.18.0.2 - - [04/Nov/2026:00:51:00 +0000] "GET / HTTP/1.1" 200 382 "-" "Wget" "-"
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 46
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 47
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 48
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 49
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 50
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 51
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 52
helper-1  | 2026/11/04 00:50:57 [notice] 1#1: start worker process 53
helper-1  | 127.0.0.1 - - [04/Nov/2026:00:50:59 +0000] "GET / HTTP/1.1" 200 896 "-" "Wget" "-"
helper-1  | 172.18.0.3 - - [04/Nov/2026:00:50:59 +0000] "GET / HTTP/1.1" 200 896 "-" "Wget" "-"

Script done on 2026-11-04 09:51:00+09:00 [COMMAND_EXIT_CODE="0"]
Script started on 2026-11-04 09:52:15+09:00 [COMMAND="bash -xc "docker compose -f bonus/compose/compose.multi.yaml down && docker compose -f bonus/compose/compose.multi.yaml ps -a"" TERM="xterm-256color" TTY="/dev/pts/8" COLUMNS="122" LINES="46"]
+ docker compose -f bonus/compose/compose.multi.yaml down
[+] down 0/2
 ⠋ Container workstation-bonus-multi-helper-1 Stopping                                                                0.1s
 ⠋ Container workstation-bonus-multi-web-1    Stopping                                                                0.1s

 ⠙ Container workstation-bonus-multi-helper-1 Stopping                                                                0.2s
 ⠙ Container workstation-bonus-multi-web-1    Stopping                                                                0.2s

 ⠹ Container workstation-bonus-multi-helper-1 Stopping                                                                0.3s
 ⠹ Container workstation-bonus-multi-web-1    Stopping                                                                0.3s

 ⠸ Container workstation-bonus-multi-helper-1 Stopping                                                                0.4s
 ⠸ Container workstation-bonus-multi-web-1    Removing                                                                0.4s
[+] down 2/2
 ✔ Container workstation-bonus-multi-helper-1 Removed                                                                 0.5s
 ✔ Container workstation-bonus-multi-web-1    Removed                                                                 0.4s
[+] down 2/3


 ⠋ Network workstation-bonus-multi_default    Removing                                                                0.1s



 ⠙ Network workstation-bonus-multi_default    Removing                                                                0.2s
[+] down 3/3


 ✔ Network workstation-bonus-multi_default    Removed                                                                 0.3s
+ docker compose -f bonus/compose/compose.multi.yaml ps -a
NAME      IMAGE     COMMAND   SERVICE   CREATED   STATUS    PORTS

Script done on 2026-11-04 09:52:16+09:00 [COMMAND_EXIT_CODE="0"]

```

