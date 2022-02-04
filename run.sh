#!/bin/sh

# docker run -it \
# -v ~/workspace/pvt-bc/blockchain:/app/blockchain \
# -p "8545:8545" \
# -p "6060:6060" \
# privatenetwork:latest \
# --syncmode="full" \
# --metrics \
# --metrics.expensive \
# --http \
# --graphql \
# --datadir="/app/data" \
# --mine \
# --miner.gasprice="0" \
# --miner.gastarget="470000000000" \
# --allow-insecure-unlock \
# --unlock="0x633f6c08ECd09F6E1680BBBFED81bc3dfB291e28" \
# --password="/app/pass"

docker run -it \
-v ~/workspace/pvt-bc/app:/app \
-p "8545:8545" \
privatenetwork:latest "$@"
