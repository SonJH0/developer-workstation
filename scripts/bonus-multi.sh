#!/usr/bin/env bash
set -eux
cd "$(dirname "$0")/.."

docker compose -f bonus/compose/compose.multi.yaml config
docker compose -f bonus/compose/compose.multi.yaml up -d --build --wait
docker compose -f bonus/compose/compose.multi.yaml ps

docker compose -f bonus/compose/compose.multi.yaml exec -T web wget -qO- http://helper:80
docker compose -f bonus/compose/compose.multi.yaml exec -T helper wget -qO- http://web:80

docker compose -f bonus/compose/compose.multi.yaml logs --no-color --tail 10
