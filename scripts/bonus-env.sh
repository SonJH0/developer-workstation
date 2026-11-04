#!/usr/bin/env bash
set -eux
cd "$(dirname "$0")/.."

docker compose -f bonus/compose/compose.env.yaml build

for port in 80 8088; do
    export NGINX_PORT="$port"

    docker compose -f bonus/compose/compose.env.yaml config
    docker compose -f bonus/compose/compose.env.yaml up -d --force-recreate --wait
    docker compose -f bonus/compose/compose.env.yaml ps
    docker compose -f bonus/compose/compose.env.yaml exec -T web printenv NGINX_PORT
    docker compose -f bonus/compose/compose.env.yaml exec -T web cat /etc/nginx/conf.d/default.conf
    docker compose -f bonus/compose/compose.env.yaml exec -T web wget -qO- "http://127.0.0.1:$port"
    docker compose -f bonus/compose/compose.env.yaml port web "$port"
done

docker compose -f bonus/compose/compose.env.yaml logs --no-color --tail 10
