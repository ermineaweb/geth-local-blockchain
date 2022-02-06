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
# --unlock="0x7231a131c9f25c8ffa24396a4767c0b858e4f205" \
# --password="/app/pass"
# --dev.period 14 \

# run geth with arguments
docker run -it --net host \
-v ~/workspace/pvt-bc/geth/data:/app/data \
-v ~/workspace/pvt-bc/geth/keystore:/app/data/keystore \
geth:latest \
--datadir "/app/data" \
--dev \
--dev.period 14 \

# --allow-insecure-unlock \
# --unlock="0x7231a131c9f25c8ffa24396a4767c0b858e4f205" \

# "$@"
