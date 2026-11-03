#!/usr/bin/env bash
# Fresh names/ports are required; existing resources are not removed automatically.
set -eu
set -x
cd "$(dirname "$0")/.."
docker --version
docker info --format 'Server version: {{.ServerVersion}}'
repro_dir=$(mktemp -d)
trap 'rm -rf "$repro_dir"' EXIT
mkdir -p "$repro_dir/app"
cp Dockerfile .dockerignore "$repro_dir/"
sed 's/Version 2/Version 1/' app/index.html > "$repro_dir/app/index.html"
docker build -t workstation-review:v1 "$repro_dir"
docker run -d --name workstation-review-web -p 127.0.0.1:8083:80 workstation-review:v1
docker run -d --name workstation-review-bind -p 127.0.0.1:8084:80 --mount "type=bind,source=$repro_dir/app,target=/usr/share/nginx/html,readonly" workstation-review:v1
docker exec workstation-review-web cat /usr/share/nginx/html/index.html
docker exec workstation-review-bind cat /usr/share/nginx/html/index.html
sed -i 's/Version 1/Version 2/' "$repro_dir/app/index.html"
docker exec workstation-review-web cat /usr/share/nginx/html/index.html
docker exec workstation-review-bind cat /usr/share/nginx/html/index.html
docker port workstation-review-web
docker stats --no-stream workstation-review-web workstation-review-bind
docker volume create workstation-review-data
docker run --name workstation-review-before --mount type=volume,source=workstation-review-data,target=/data ubuntu:24.04 sh -c 'echo "Saved by jaehyeong - persistence test" > /data/proof.txt; cat /data/proof.txt'
docker rm workstation-review-before
docker ps -a --filter name=workstation-review-before
docker run --name workstation-review-after --mount type=volume,source=workstation-review-data,target=/data ubuntu:24.04 cat /data/proof.txt
docker volume inspect workstation-review-data
printf '\nOpen http://localhost:8083 and http://localhost:8084; capture both address bars. Press Enter after inspection.\n'
read -r confirmation
docker stop workstation-review-web workstation-review-bind
docker rm workstation-review-web workstation-review-bind workstation-review-after
# The named volume is retained intentionally. See README for explicit deletion.
