# 04-docker-permission — 실제 실행 기록

원본 실행 기록에서 터미널 색상·제목·쉘 메타데이터와 제어문자를 제거한 열람용 사본입니다. 중복 출력은 유지했습니다. 출력 결과를 새로 만들어 넣지 않았습니다.

```text
Script started on 2026-11-04 07:20:17+09:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="120" LINES="62"]
jaehyeong@GNIA-C201-H04:~/developer-workstation$ whoami

id

ls -l /var/run/docker.sock

getent group docker

docker info
jaehyeong@GNIA-C201-H04:~/developer-workstation$ whoami

id

ls -l /var/run/docker.sock

getent group docker

docker info

jaehyeong
uid=1000(jaehyeong) gid=1000(jaehyeong) groups=1000(jaehyeong),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users)
srw-rw---- 1 root docker 0 Nov  4 07:18 /var/run/docker.sock
docker:x:1001:jaehyeong
Client:
 Version:    29.9.2
 Context:    default
 Debug Mode: false
 Plugins:
  agent: Docker AI Agent Runner (Docker Inc.)
    Version:  v1.152.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-agent
  ai: Docker AI Agent - Ask Gordon (Docker Inc.)
    Version:  v1.33.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-ai
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.38.1
    Path:     /usr/local/lib/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v5.6.1
    Path:     /usr/local/lib/docker/cli-plugins/docker-compose
  debug: Get a shell into any image or container (Docker Inc.)
    Version:  0.49.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-debug
  desktop: Docker Desktop commands (Docker Inc.)
    Version:  4.98.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-desktop
  dhi: CLI for managing Docker Hardened Images (Docker Inc.)
    Version:  v0.0.9
    Path:     /usr/local/lib/docker/cli-plugins/docker-dhi
  extension: Manages Docker extensions (Docker Inc.)
    Version:  v0.2.32
    Path:     /usr/local/lib/docker/cli-plugins/docker-extension
  init: Creates Docker-related starter files for your project (Docker Inc.)
    Version:  v1.4.1
    Path:     /usr/local/lib/docker/cli-plugins/docker-init
  mcp: Docker MCP Plugin (Docker Inc.)
    Version:  v0.44.2
    Path:     /usr/local/lib/docker/cli-plugins/docker-mcp
  model: Docker Model Runner (Docker Inc.)
    Version:  v1.2.9
    Path:     /usr/local/lib/docker/cli-plugins/docker-model
  offload: Docker Offload (Docker Inc.)
    Version:  v0.7.35
    Path:     /usr/local/lib/docker/cli-plugins/docker-offload
  pass: Docker Pass Secrets Manager Plugin (beta) (Docker Inc.)
    Version:  v0.3.2
    Path:     /usr/local/lib/docker/cli-plugins/docker-pass
  sandbox: "docker sandbox" is deprecated, use Docker Sandboxes instead (Docker Inc.)
    Version:  v0.13.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-sandbox
  scout: Docker Scout (Docker Inc.)
    Version:  v1.27.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-scout

Server:
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock
jaehyeong@GNIA-C201-H04:~/developer-workstation$ 

jaehyeong@GNIA-C201-H04:~/developer-workstation$ 

jaehyeong@GNIA-C201-H04:~/developer-workstation$ 

jaehyeong@GNIA-C201-H04:~/developer-workstation$ 

jaehyeong@GNIA-C201-H04:~/developer-workstation$ sudo docker info --format '{{.ServerVersion}}'sudo docker info --format '{{.ServerVersion}}'

[sudo: authenticate] Password: **********          
29.9.2
jaehyeong@GNIA-C201-H04:~/developer-workstation$ newgrp dockernewgrp docker

Command 'newgrp' not found, but can be installed with:
sudo apt install util-linux-extra
jaehyeong@GNIA-C201-H04:~/developer-workstation$ id

docker info --format 'Server version: {{.ServerVersion}}'

docker ps
jaehyeong@GNIA-C201-H04:~/developer-workstation$ id

docker info --format 'Server version: {{.ServerVersion}}'

docker ps

uid=1000(jaehyeong) gid=1000(jaehyeong) groups=1000(jaehyeong),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users)
Server version: 
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock
permission denied while trying to connect to the docker API at unix:///var/run/docker.sock
jaehyeong@GNIA-C201-H04:~/developer-workstation$ su - jaehyeongsu - jaehyeong

Password: 
jaehyeong@GNIA-C201-H04:~$ cd ~/developer-workstation

id

docker info --format 'Server version: {{.ServerVersion}}'

docker ps
jaehyeong@GNIA-C201-H04:~$ cd ~/developer-workstation

id

docker info --format 'Server version: {{.ServerVersion}}'

docker ps

uid=1000(jaehyeong) gid=1000(jaehyeong) groups=1000(jaehyeong),4(adm),24(cdrom),27(sudo),30(dip),46(plugdev),100(users),1001(docker)
Server version: 29.9.2
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # Docker 버전과 엔진 상태 기록

docker --version

docker info


# 테스트 이미지로 컨테이너 생성 및 실행

docker run --name workstation-hello hello-world


# 종료된 컨테이너까지 포함해 확인

docker ps -a


# 컨테이너가 출력한 메시지 다시 확인

docker logs workstation-hello


# 다운로드된 이미지 확인

docker images
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # Docker 버전과 엔진 상태 기록

docker --version

docker info


# 테스트 이미지로 컨테이너 생성 및 실행

docker run --name workstation-hello hello-world


# 종료된 컨테이너까지 포함해 확인

docker ps -a


# 컨테이너가 출력한 메시지 다시 확인

docker logs workstation-hello


# 다운로드된 이미지 확인

docker images

Docker version 29.9.2, build a82e528
Client:
 Version:    29.9.2
 Context:    default
 Debug Mode: false
 Plugins:
  agent: Docker AI Agent Runner (Docker Inc.)
    Version:  v1.152.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-agent
  ai: Docker AI Agent - Ask Gordon (Docker Inc.)
    Version:  v1.33.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-ai
  buildx: Docker Buildx (Docker Inc.)
    Version:  v0.38.1
    Path:     /usr/local/lib/docker/cli-plugins/docker-buildx
  compose: Docker Compose (Docker Inc.)
    Version:  v5.6.1
    Path:     /usr/local/lib/docker/cli-plugins/docker-compose
  debug: Get a shell into any image or container (Docker Inc.)
    Version:  0.49.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-debug
  desktop: Docker Desktop commands (Docker Inc.)
    Version:  4.98.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-desktop
  dhi: CLI for managing Docker Hardened Images (Docker Inc.)
    Version:  v0.0.9
    Path:     /usr/local/lib/docker/cli-plugins/docker-dhi
  extension: Manages Docker extensions (Docker Inc.)
    Version:  v0.2.32
    Path:     /usr/local/lib/docker/cli-plugins/docker-extension
  init: Creates Docker-related starter files for your project (Docker Inc.)
    Version:  v1.4.1
    Path:     /usr/local/lib/docker/cli-plugins/docker-init
  mcp: Docker MCP Plugin (Docker Inc.)
    Version:  v0.44.2
    Path:     /usr/local/lib/docker/cli-plugins/docker-mcp
  model: Docker Model Runner (Docker Inc.)
    Version:  v1.2.9
    Path:     /usr/local/lib/docker/cli-plugins/docker-model
  offload: Docker Offload (Docker Inc.)
    Version:  v0.7.35
    Path:     /usr/local/lib/docker/cli-plugins/docker-offload
  pass: Docker Pass Secrets Manager Plugin (beta) (Docker Inc.)
    Version:  v0.3.2
    Path:     /usr/local/lib/docker/cli-plugins/docker-pass
  sandbox: "docker sandbox" is deprecated, use Docker Sandboxes instead (Docker Inc.)
    Version:  v0.13.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-sandbox
  scout: Docker Scout (Docker Inc.)
    Version:  v1.27.0
    Path:     /usr/local/lib/docker/cli-plugins/docker-scout

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 0
 Server Version: 29.9.2
 Storage Driver: overlayfs
  driver-type: io.containerd.snapshotter.v1
 Logging Driver: local
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local splunk syslog
 CDI spec directories:
  /etc/cdi
  /var/run/cdi
 Discovered Devices:
  cdi: docker.com/gpu=webgpu
 Swarm: inactive
 Runtimes: runc io.containerd.runc.v2 nvidia
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: b7a25261e029d68978bbf290df0a62fc819b3c51
 runc version: v1.5.2-0-g29dd3dc2
 init version: de40ad0
 Security Options:
  seccomp
   Profile: builtin
  cgroupns
 Kernel Version: 6.18.54.1-microsoft-standard-WSL2
 Operating System: Docker Desktop
 OSType: linux
 Architecture: x86_64
 CPUs: 24
 Total Memory: 15.25GiB
 Name: docker-desktop
 ID: 7dc9eaf5-14a2-4317-93af-f20021c274d3
 Docker Root Dir: /var/lib/docker
 Debug Mode: false
 HTTP Proxy: http.docker.internal:3128
 HTTPS Proxy: http.docker.internal:3128
 No Proxy: hubproxy.docker.internal
 Labels:
  com.docker.desktop.address=unix:///var/run/docker-cli.sock
 Experimental: false
 Insecure Registries:
  hubproxy.docker.internal:5555
  127.0.0.0/8
  ::1/128
 Live Restore Enabled: false
 Firewall Backend: iptables

Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world


4f55086f7dd0: Pulling fs layer 

4f55086f7dd0: Download complete 

4f55086f7dd0: Pull complete 


d5e71e642bf5: Download complete 
Digest: sha256:c567b231f65614688711a75f31518a064258a51d442117a3e771a3a8fdba78ef
Status: Downloaded newer image for hello-world:latest

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

CONTAINER ID   IMAGE         COMMAND    CREATED                  STATUS                              PORTS     NAMES
2a668679d344   hello-world   "/hello"   Less than a second ago   Exited (0) Less than a second ago             workstation-hello

Hello from Docker!
This message shows that your installation appears to be working correctly.

To generate this message, Docker took the following steps:
 1. The Docker client contacted the Docker daemon.
 2. The Docker daemon pulled the "hello-world" image from the Docker Hub.
    (amd64)
 3. The Docker daemon created a new container from that image which runs the
    executable that produces the output you are currently reading.
 4. The Docker daemon streamed that output to the Docker client, which sent it
    to your terminal.

To try something more ambitious, you can run an Ubuntu container with:
 $ docker run -it ubuntu bash

Share images, automate workflows, and more with a free Docker ID:
 https://hub.docker.com/

For more examples and ideas, visit:
 https://docs.docker.com/get-started/

                                                                                                    i Info →   U  In Use
IMAGE                ID             DISK USAGE   CONTENT SIZE   EXTRA
hello-world:latest   c567b231f656       25.9kB         9.49kB    U   
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # Ubuntu 이미지 다운로드

docker pull ubuntu:24.04


# 주 프로세스가 계속 실행되는 컨테이너 생성

docker run -d --name workstation-ubuntu ubuntu:24.04 sleep infinity


# 실행 상태와 리소스 사용 확인

docker ps

docker stats --no-stream workstation-ubuntu
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # Ubuntu 이미지 다운로드

docker pull ubuntu:24.04


# 주 프로세스가 계속 실행되는 컨테이너 생성

docker run -d --name workstation-ubuntu ubuntu:24.04 sleep infinity


# 실행 상태와 리소스 사용 확인

docker ps

docker stats --no-stream workstation-ubuntu

24.04: Pulling from library/ubuntu


7a48b8f0e5c7: Pulling fs layer 

7a48b8f0e5c7: Downloading [=>                                                 ]  1.049MB/29.77MB

7a48b8f0e5c7: Downloading [=====>                                             ]  3.146MB/29.77MB

7a48b8f0e5c7: Downloading [========>                                          ]  5.243MB/29.77MB

7a48b8f0e5c7: Downloading [==========>                                        ]  6.291MB/29.77MB

7a48b8f0e5c7: Downloading [==============>                                    ]  8.389MB/29.77MB


98144013299c: Downloading [==================================================>]  1.938MB/1.938MB

7a48b8f0e5c7: Downloading [===============>                                   ]  9.437MB/29.77MB

98144013299c: Download complete 

7a48b8f0e5c7: Downloading [===================>                               ]  11.53MB/29.77MB

7a48b8f0e5c7: Downloading [======================>                            ]  13.63MB/29.77MB

7a48b8f0e5c7: Downloading [========================>                          ]  14.68MB/29.77MB

7a48b8f0e5c7: Downloading [============================>                      ]  16.78MB/29.77MB

7a48b8f0e5c7: Downloading [===============================>                   ]  18.87MB/29.77MB

7a48b8f0e5c7: Downloading [===================================>               ]  20.97MB/29.77MB

7a48b8f0e5c7: Downloading [====================================>              ]  22.02MB/29.77MB

7a48b8f0e5c7: Downloading [========================================>          ]  24.12MB/29.77MB

7a48b8f0e5c7: Downloading [==========================================>        ]  25.17MB/29.77MB

7a48b8f0e5c7: Downloading [=============================================>     ]  27.26MB/29.77MB

7a48b8f0e5c7: Downloading [==================================================>]  29.77MB/29.77MB

7a48b8f0e5c7: Download complete 

7a48b8f0e5c7: Extracting 1 s

7a48b8f0e5c7: Extracting 1 s

7a48b8f0e5c7: Extracting 1 s

7a48b8f0e5c7: Pull complete 
Digest: sha256:fe81560990fae86dc4743202b2cb4d3df98d0bcf949173cecef15ce1127ef852
Status: Downloaded newer image for ubuntu:24.04
docker.io/library/ubuntu:24.04
d6c2f51e1d3d92bbfc36124fadf803b9aa541cde16b5b9f51c2b46263175c1fd
CONTAINER ID   IMAGE          COMMAND            CREATED                  STATUS                  PORTS     NAMES
d6c2f51e1d3d   ubuntu:24.04   "sleep infinity"   Less than a second ago   Up Less than a second             workstation-ubuntu
CONTAINER ID   NAME                 CPU %     MEM USAGE / LIMIT     MEM %     NET I/O      BLOCK I/O   PIDS
d6c2f51e1d3d   workstation-ubuntu   0.00%     1.344MiB / 15.25GiB   0.01%     690B / 84B   0B / 0B     1
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker exec -it workstation-ubuntu bashdocker exec -it workstation-ubuntu bash

root@d6c2f51e1d3d:/# whoami

cat /etc/os-release

ls /

echo "Hello from inside the container"whoami

cat /etc/os-release

ls /

echo "Hello from inside the container"

root
PRETTY_NAME="Ubuntu 24.04.5 LTS"
NAME="Ubuntu"
VERSION_ID="24.04"
VERSION="24.04.5 LTS (Noble Numbat)"
VERSION_CODENAME=noble
ID=ubuntu
ID_LIKE=debian
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
UBUNTU_CODENAME=noble
LOGO=ubuntu-logo
bin  boot  dev  etc  home  lib  lib64  media  mnt  opt  proc  root  run  sbin  srv  sys  tmp  usr  var
Hello from inside the container
root@d6c2f51e1d3d:/# exitexit

exit
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker psdocker ps

CONTAINER ID   IMAGE          COMMAND            CREATED          STATUS          PORTS     NAMES
d6c2f51e1d3d   ubuntu:24.04   "sleep infinity"   46 seconds ago   Up 46 seconds             workstation-ubuntu
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 기존 컨테이너 중지 후 상태 확인

docker stop workstation-ubuntu

docker ps -a


# 같은 컨테이너 다시 시작

docker start workstation-ubuntu

docker ps


# 주 프로세스가 bash인 별도 컨테이너 실행

docker run -it --name workstation-shell ubuntu:24.04 bash# 기존 컨테이너 중지 후 상태 확인

docker stop workstation-ubuntu

docker ps -a


# 같은 컨테이너 다시 시작

docker start workstation-ubuntu

docker ps


# 주 프로세스가 bash인 별도 컨테이너 실행

docker run -it --name workstation-shell ubuntu:24.04 bash

workstation-ubuntu
CONTAINER ID   IMAGE          COMMAND            CREATED              STATUS                                PORTS     NAMES
d6c2f51e1d3d   ubuntu:24.04   "sleep infinity"   About a minute ago   Exited (137) Less than a second ago             workstation-ubuntu
2a668679d344   hello-world    "/hello"           3 minutes ago        Exited (0) 3 minutes ago                        workstation-hello
workstation-ubuntu
CONTAINER ID   IMAGE          COMMAND            CREATED              STATUS                  PORTS     NAMES
d6c2f51e1d3d   ubuntu:24.04   "sleep infinity"   About a minute ago   Up Less than a second             workstation-ubuntu
root@c899048029a4:/# echo "This bash is the main process"echo "This bash is the main process"

This bash is the main process
root@c899048029a4:/# exitexit

exit
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker ps -adocker ps -a

CONTAINER ID   IMAGE          COMMAND            CREATED          STATUS                     PORTS     NAMES
c899048029a4   ubuntu:24.04   "bash"             17 seconds ago   Exited (0) 4 seconds ago             workstation-shell
d6c2f51e1d3d   ubuntu:24.04   "sleep infinity"   2 minutes ago    Up 17 seconds                        workstation-ubuntu
2a668679d344   hello-world    "/hello"           3 minutes ago    Exited (0) 3 minutes ago             workstation-hello
jaehyeong@GNIA-C201-H04:~/developer-workstation$ cd ~/developer-workstation


cat > app/index.html <<'EOF'

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

  <p>Version 1</p>

</body>

</html>

EOF


cat > Dockerfile <<'EOF'

FROM nginx:stable-alpine

COPY app/ /usr/share/nginx/html/

EXPOSE 80

EOF


cat > .dockerignore <<'EOF'

*

!app/

!app/**

!Dockerfile

EOF


cat Dockerfile

cat app/index.html
jaehyeong@GNIA-C201-H04:~/developer-workstation$ cd ~/developer-workstation


cat > app/index.html <<'EOF'

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

  <p>Version 1</p>

</body>

</html>

EOF


cat > Dockerfile <<'EOF'

FROM nginx:stable-alpine

COPY app/ /usr/share/nginx/html/

EXPOSE 80

EOF


cat > .dockerignore <<'EOF'

*

!app/

!app/**

!Dockerfile

EOF


cat Dockerfile

cat app/index.html

FROM nginx:stable-alpine
COPY app/ /usr/share/nginx/html/
EXPOSE 80
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
  <p>Version 1</p>
</body>
</html>
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker build -t workstation-web:v1 .


docker run -d --name workstation-web -p 127.0.0.1:8080:80 workstation-web:v1


docker ps
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker build -t workstation-web:v1 .


docker run -d --name workstation-web -p 127.0.0.1:8080:80 workstation-web:v1


docker ps

[+] Building 0.0s (0/1)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
[+] Building 0.2s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             0.2s
[+] Building 0.3s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             0.3s
[+] Building 0.5s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             0.5s
[+] Building 0.6s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             0.6s
[+] Building 0.8s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             0.8s
[+] Building 0.9s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             0.9s
[+] Building 1.1s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             1.1s
[+] Building 1.2s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             1.2s
[+] Building 1.4s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             1.4s
[+] Building 1.5s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             1.5s
[+] Building 1.7s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             1.7s
[+] Building 1.8s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             1.8s
[+] Building 2.0s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.0s
[+] Building 2.1s (1/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.1s
[+] Building 2.2s (2/2)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
[+] Building 2.4s (5/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.2s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
[+] Building 2.6s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.3s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
[+] Building 2.6s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.3s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 0B / 20.31MB                        0.2s
[+] Building 2.8s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.5s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 0B / 20.31MB                        0.3s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 0B / 1.40kB                         0.3s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 0B / 1.21kB                         0.3s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 0B / 403B                           0.3s
[+] Building 2.9s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.6s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 3.15MB / 20.31MB                    0.5s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 0B / 1.40kB                         0.4s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 0B / 1.21kB                         0.4s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 0B / 403B                           0.4s
[+] Building 3.1s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 6.29MB / 20.31MB                    0.6s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 0B / 1.21kB                         0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 0B / 403B                           0.6s
[+] Building 3.2s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.9s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 6.29MB / 20.31MB                    0.7s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
[+] Building 3.3s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.1s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 8.39MB / 20.31MB                    0.9s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 0B / 1.88MB                         0.2s
[+] Building 3.5s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.2s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 11.53MB / 20.31MB                   1.0s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 0B / 1.88MB                         0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 0B / 3.85MB                         0.3s
[+] Building 3.7s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.4s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 13.63MB / 20.31MB                   1.2s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 2.10MB / 3.85MB                     0.5s
[+] Building 3.8s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.5s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 15.73MB / 20.31MB                   1.3s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
[+] Building 3.9s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.6s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
[+] Building 4.1s (4/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
[+] Building 4.1s (5/6)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
[+] Building 4.3s (6/7)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                         0.0s
 => exporting to image                                                                                             0.1s
 => => exporting layers                                                                                            0.1s
[+] Building 4.5s (6/7)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                         0.0s
 => exporting to image                                                                                             0.3s
 => => exporting layers                                                                                            0.1s
 => => exporting manifest sha256:99fd42063c77fd1c255c7fe2b73386e21e1979b94bc14a518456fcd6887bfd0b                  0.0s
 => => exporting config sha256:2cbc0f592da109cc87dabcaf1e35a54c0f1df16eb80b5b8d946361a4ace3a7f1                    0.0s
 => => exporting attestation manifest sha256:19b8cf0813c24629860c06892899651ff5cf3d494e16430fb2548610d8bcd6e3      0.0s
 => => exporting manifest list sha256:856c2233b28f0a2fbf4e7ce0833ba357b0c80ea7551f558c8f10f7da0a438fb2             0.0s
 => => naming to docker.io/library/workstation-web:v1                                                              0.0s
 => => unpacking to docker.io/library/workstation-web:v1                                                           0.2s
[+] Building 4.6s (6/7)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                         0.0s
 => exporting to image                                                                                             0.5s
 => => exporting layers                                                                                            0.1s
 => => exporting manifest sha256:99fd42063c77fd1c255c7fe2b73386e21e1979b94bc14a518456fcd6887bfd0b                  0.0s
 => => exporting config sha256:2cbc0f592da109cc87dabcaf1e35a54c0f1df16eb80b5b8d946361a4ace3a7f1                    0.0s
 => => exporting attestation manifest sha256:19b8cf0813c24629860c06892899651ff5cf3d494e16430fb2548610d8bcd6e3      0.0s
 => => exporting manifest list sha256:856c2233b28f0a2fbf4e7ce0833ba357b0c80ea7551f558c8f10f7da0a438fb2             0.0s
 => => naming to docker.io/library/workstation-web:v1                                                              0.0s
 => => unpacking to docker.io/library/workstation-web:v1                                                           0.3s
[+] Building 4.7s (6/7)                                                                                  docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                         0.0s
 => exporting to image                                                                                             0.5s
 => => exporting layers                                                                                            0.1s
 => => exporting manifest sha256:99fd42063c77fd1c255c7fe2b73386e21e1979b94bc14a518456fcd6887bfd0b                  0.0s
 => => exporting config sha256:2cbc0f592da109cc87dabcaf1e35a54c0f1df16eb80b5b8d946361a4ace3a7f1                    0.0s
 => => exporting attestation manifest sha256:19b8cf0813c24629860c06892899651ff5cf3d494e16430fb2548610d8bcd6e3      0.0s
 => => exporting manifest list sha256:856c2233b28f0a2fbf4e7ce0833ba357b0c80ea7551f558c8f10f7da0a438fb2             0.0s
 => => naming to docker.io/library/workstation-web:v1                                                              0.0s
 => => unpacking to docker.io/library/workstation-web:v1                                                           0.4s
[+] Building 4.8s (7/7) FINISHED                                                                         docker:default
 => [internal] load build definition from Dockerfile                                                               0.0s
 => => transferring dockerfile: 105B                                                                               0.0s
 => [internal] load metadata for docker.io/library/nginx:stable-alpine                                             2.2s
 => [internal] load .dockerignore                                                                                  0.0s
 => => transferring context: 68B                                                                                   0.0s
 => [internal] load build context                                                                                  0.1s
 => => transferring context: 452B                                                                                  0.0s
 => [1/2] FROM docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  1.8s
 => => resolve docker.io/library/nginx:stable-alpine@sha256:0e52bd054126cdc040b1276c0af347aeb02a41b9cfe305d609476  0.0s
 => => sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb 20.31MB / 20.31MB                   1.4s
 => => sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14 1.40kB / 1.40kB                     0.5s
 => => sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939 1.21kB / 1.21kB                     0.6s
 => => sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a 403B / 403B                         0.6s
 => => sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2 964B / 964B                         0.2s
 => => sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704 627B / 627B                         0.2s
 => => sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60 1.88MB / 1.88MB                     0.4s
 => => sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788 3.85MB / 3.85MB                     0.5s
 => => extracting sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788                          0.1s
 => => extracting sha256:9f0afb44f10e826253b342c0265e188067c2f0a30c782a52e329928a763adc60                          0.1s
 => => extracting sha256:f19a2d3b695178ba0e57d473535f74f5d934f45e191de8334e730f83d2c62704                          0.0s
 => => extracting sha256:885725a63a7cf1d4d5aac105944b35ece2b69a8c2cc6f7040f04727b7b8a63d2                          0.0s
 => => extracting sha256:e125989d16f03d1e00b60afdd9abe46ed1437ed63b73926d036a5537f6be770a                          0.0s
 => => extracting sha256:81b64ae234ef95f3cfc19b7f6c45a511eccbefa6148889ee33ed43c6c3f39939                          0.0s
 => => extracting sha256:bb658a2541968d2b90a8ee165ad08b7f71055c7f7832bdff98e2de2d8b90cf14                          0.0s
 => => extracting sha256:5b8cb54cfa408030aaa43d7bffa9141e0ae6f8a479df13c7aa152100cca358fb                          0.2s
 => [2/2] COPY app/ /usr/share/nginx/html/                                                                         0.0s
 => exporting to image                                                                                             0.5s
 => => exporting layers                                                                                            0.1s
 => => exporting manifest sha256:99fd42063c77fd1c255c7fe2b73386e21e1979b94bc14a518456fcd6887bfd0b                  0.0s
 => => exporting config sha256:2cbc0f592da109cc87dabcaf1e35a54c0f1df16eb80b5b8d946361a4ace3a7f1                    0.0s
 => => exporting attestation manifest sha256:19b8cf0813c24629860c06892899651ff5cf3d494e16430fb2548610d8bcd6e3      0.0s
 => => exporting manifest list sha256:856c2233b28f0a2fbf4e7ce0833ba357b0c80ea7551f558c8f10f7da0a438fb2             0.0s
 => => naming to docker.io/library/workstation-web:v1                                                              0.0s
 => => unpacking to docker.io/library/workstation-web:v1                                                           0.4s
a5377a5f63fdaf33cd1b5812116cff3a4b5e73f8817802236e74bcbd8d4a2016
CONTAINER ID   IMAGE                COMMAND                  CREATED                  STATUS                  PORTS                    NAMES
a5377a5f63fd   workstation-web:v1   "/docker-entrypoint.…"   Less than a second ago   Up Less than a second   127.0.0.1:8080->80/tcp   workstation-web
d6c2f51e1d3d   ubuntu:24.04         "sleep infinity"         3 minutes ago            Up About a minute                                workstation-ubuntu
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker ps --filter name=workstation-web

docker port workstation-web

docker logs --tail 20 workstation-web
jaehyeong@GNIA-C201-H04:~/developer-workstation$ docker ps --filter name=workstation-web

docker port workstation-web

docker logs --tail 20 workstation-web

CONTAINER ID   IMAGE                COMMAND                  CREATED              STATUS              PORTS                    NAMES
a5377a5f63fd   workstation-web:v1   "/docker-entrypoint.…"   About a minute ago   Up About a minute   127.0.0.1:8080->80/tcp   workstation-web
80/tcp -> 127.0.0.1:8080
2026/11/03 22:28:26 [notice] 1#1: start worker process 37
2026/11/03 22:28:26 [notice] 1#1: start worker process 38
2026/11/03 22:28:26 [notice] 1#1: start worker process 39
2026/11/03 22:28:26 [notice] 1#1: start worker process 40
2026/11/03 22:28:26 [notice] 1#1: start worker process 41
2026/11/03 22:28:26 [notice] 1#1: start worker process 42
2026/11/03 22:28:26 [notice] 1#1: start worker process 43
2026/11/03 22:28:26 [notice] 1#1: start worker process 44
2026/11/03 22:28:26 [notice] 1#1: start worker process 45
2026/11/03 22:28:26 [notice] 1#1: start worker process 46
2026/11/03 22:28:26 [notice] 1#1: start worker process 47
2026/11/03 22:28:26 [notice] 1#1: start worker process 48
2026/11/03 22:28:26 [notice] 1#1: start worker process 49
2026/11/03 22:28:26 [notice] 1#1: start worker process 50
2026/11/03 22:28:26 [notice] 1#1: start worker process 51
2026/11/03 22:28:26 [notice] 1#1: start worker process 52
2026/11/03 22:28:26 [notice] 1#1: start worker process 53
172.17.0.1 - - [03/Nov/2026:22:28:41 +0000] "GET / HTTP/1.1" 200 382 "-" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
172.17.0.1 - - [03/Nov/2026:22:28:41 +0000] "GET /favicon.ico HTTP/1.1" 404 555 "http://localhost:8080/" "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/156.0.0.0 Safari/537.36 Edg/156.0.0.0" "-"
2026/11/03 22:28:41 [error] 30#30: *1 open() "/usr/share/nginx/html/favicon.ico" failed (2: No such file or directory), client: 172.17.0.1, server: localhost, request: "GET /favicon.ico HTTP/1.1", host: "localhost:8080", referrer: "http://localhost:8080/"
jaehyeong@GNIA-C201-H04:~/developer-workstation$ cd ~/developer-workstation


docker run -d --name workstation-bind \

  -p 127.0.0.1:8081:80 \

  --mount type=bind,source="$(pwd)/app",target=/usr/share/nginx/html,readonly \

  workstation-web:v1


docker port workstation-bind


docker exec workstation-bind cat /usr/share/nginx/html/index.htmlcd ~/developer-workstation


docker run -d --name workstation-bind \

  -p 127.0.0.1:8081:80 \

  --mount type=bind,source="$(pwd)/app",target=/usr/share/nginx/html,readonly \

  workstation-web:v1


docker port workstation-bind


docker exec workstation-bind cat /usr/share/nginx/html/index.html

4b1a73ad59842feaa04240def0d63f306adc47b37c0018b6a013b2a5324e8acb
80/tcp -> 127.0.0.1:8081
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
  <p>Version 1</p>
</body>
</html>
jaehyeong@GNIA-C201-H04:~/developer-workstation$ sed -i 's/Version 1/Version 2/' app/index.html


cat app/index.html


docker exec workstation-bind cat /usr/share/nginx/html/index.htmlsed -i 's/Version 1/Version 2/' app/index.html


cat app/index.html


docker exec workstation-bind cat /usr/share/nginx/html/index.html

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
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 이름 있는 볼륨 생성

docker volume create workstation-data


# 첫 번째 컨테이너에서 볼륨에 데이터 저장

docker run --name volume-before \

  --mount type=volume,source=workstation-data,target=/data \

  ubuntu:24.04 \

  sh -c 'echo "Saved by jaehyeong - persistence test" > /data/proof.txt; cat /data/proof.txt'


# 연결된 볼륨과 저장 결과 확인

docker inspect volume-before --format '{{json .Mounts}}'

docker logs volume-before
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 이름 있는 볼륨 생성

docker volume create workstation-data


# 첫 번째 컨테이너에서 볼륨에 데이터 저장

docker run --name volume-before \

  --mount type=volume,source=workstation-data,target=/data \

  ubuntu:24.04 \

  sh -c 'echo "Saved by jaehyeong - persistence test" > /data/proof.txt; cat /data/proof.txt'


# 연결된 볼륨과 저장 결과 확인

docker inspect volume-before --format '{{json .Mounts}}'

docker logs volume-before

workstation-data
Saved by jaehyeong - persistence test
[{"Type":"volume","Name":"workstation-data","Source":"/var/lib/docker/volumes/workstation-data/_data","Destination":"/data","Driver":"local","Mode":"z","RW":true,"Propagation":""}]
Saved by jaehyeong - persistence test
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 첫 번째 컨테이너 삭제

docker rm volume-before


# 삭제 여부 확인 — 제목 줄만 나오면 해당 컨테이너가 없는 상태

docker ps -a --filter name=volume-before


# 새 컨테이너에 같은 볼륨을 연결해 기존 파일 읽기

docker run --name volume-after \

  --mount type=volume,source=workstation-data,target=/data \

  ubuntu:24.04 \

  cat /data/proof.txt


# 볼륨이 유지되는지 확인

docker volume inspect workstation-data
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 첫 번째 컨테이너 삭제

docker rm volume-before


# 삭제 여부 확인 — 제목 줄만 나오면 해당 컨테이너가 없는 상태

docker ps -a --filter name=volume-before


# 새 컨테이너에 같은 볼륨을 연결해 기존 파일 읽기

docker run --name volume-after \

  --mount type=volume,source=workstation-data,target=/data \

  ubuntu:24.04 \

  cat /data/proof.txt


# 볼륨이 유지되는지 확인

docker volume inspect workstation-data

volume-before
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
Saved by jaehyeong - persistence test
[
    {
        "CreatedAt": "2026-11-03T22:31:37Z",
        "Driver": "local",
        "Labels": null,
        "Mountpoint": "/var/lib/docker/volumes/workstation-data/_data",
        "Name": "workstation-data",
        "Options": null,
        "Scope": "local"
    }
]
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 기존 웹 서버가 사용하는 포트 확인

docker port workstation-web


# 같은 호스트 포트를 사용해 충돌 재현

docker run -d --name workstation-port-test \

  -p 127.0.0.1:8080:80 \

  workstation-web:v1
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 기존 웹 서버가 사용하는 포트 확인

docker port workstation-web


# 같은 호스트 포트를 사용해 충돌 재현

docker run -d --name workstation-port-test \

  -p 127.0.0.1:8080:80 \

  workstation-web:v1

80/tcp -> 127.0.0.1:8080
b50ec6cd4246e38daddb02b89ebffff31baac3e2d638ede9e716ed2db96d3a13
docker: Error response from daemon: failed to set up container networking: driver failed programming external connectivity on endpoint workstation-port-test (c8b8d204275025c4017ad827342c917bb852185408c224ef76ee7a3d3bdd883c): Bind for 127.0.0.1:8080 failed: port is already allocated

Run 'docker run --help' for more information
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 실행에 실패한 테스트 컨테이너 상태 확인

docker ps -a --filter name=workstation-port-test


# 실패한 테스트 컨테이너만 삭제

docker rm workstation-port-test


# 호스트 포트를 8082로 변경해 다시 실행

docker run -d --name workstation-port-test \

  -p 127.0.0.1:8082:80 \

  workstation-web:v1


# 변경 후 실행 상태와 포트 확인

docker ps --filter name=workstation-port-test

docker port workstation-port-test
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 실행에 실패한 테스트 컨테이너 상태 확인

docker ps -a --filter name=workstation-port-test


# 실패한 테스트 컨테이너만 삭제

docker rm workstation-port-test


# 호스트 포트를 8082로 변경해 다시 실행

docker run -d --name workstation-port-test \

  -p 127.0.0.1:8082:80 \

  workstation-web:v1


# 변경 후 실행 상태와 포트 확인

docker ps --filter name=workstation-port-test

docker port workstation-port-test

CONTAINER ID   IMAGE                COMMAND                  CREATED          STATUS    PORTS     NAMES
b50ec6cd4246   workstation-web:v1   "/docker-entrypoint.…"   11 seconds ago   Created             workstation-port-test
workstation-port-test
1c13dde2905c48f9a9892524052935e1dfd3f78b88e881b5aad08efd1f1fb255
CONTAINER ID   IMAGE                COMMAND                  CREATED                  STATUS                  PORTS                    NAMES
1c13dde2905c   workstation-web:v1   "/docker-entrypoint.…"   Less than a second ago   Up Less than a second   127.0.0.1:8082->80/tcp   workstation-port-test
80/tcp -> 127.0.0.1:8082
jaehyeong@GNIA-C201-H04:~/developer-workstation$ exitexit

logout
jaehyeong@GNIA-C201-H04:~/developer-workstation$ exitexit

exit

Script done on 2026-11-04 07:33:40+09:00 [COMMAND_EXIT_CODE="0"]

```
