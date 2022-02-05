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
# --unlock="0x8025a7065300e4AFb51D58Ab22f6C2252e54Cba1" \
# --password="/app/pass"
# --dev.period 14 \

# account new --password ./config/password

# run geth with arguments
docker run -it \
--net host \
-v ~/workspace/pvt-bc/geth/data:/app/data \
-v ~/workspace/pvt-bc/geth/keystore:/app/data/keystore \
geth:latest "$@"

# run console with no logs
# docker run -it \
# --net host \
# -v ~/workspace/pvt-bc/geth/data:/app/data \
# -v ~/workspace/pvt-bc/geth/keystore:/app/data/keystore \
# geth:latest \
# --verbosity 0 \
# --allow-insecure-unlock -unlock 0x7231a131c9f25c8ffa24396a4767c0b858e4f205 --mine \
# conso>le 