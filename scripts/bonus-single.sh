#!/usr/bin/env bash
set -eux
cd "$(dirname "$0")/.."

docker compose -f bonus/compose/compose.single.yaml config
docker compose -f bonus/compose/compose.single.yaml up -d --build --wait
docker compose -f bonus/compose/compose.single.yaml ps
docker compose -f bonus/compose/compose.single.yaml exec -T web wget -qO- http://127.0.0.1:80
docker compose -f bonus/compose/compose.single.yaml logs --no-color --tail 20
