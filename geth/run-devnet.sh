#!/bin/sh

LOCAL_PATH=$(pwd)

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

# -v "$LOCAL_PATH"/keystore:/app/data/keystore \
# -v "$LOCAL_PATH"/data:/app/data \
docker run -it --net host \
geth:latest \
--datadir "/app/data" \
--keystore "/app/keystore" \
--networkid 12345 \
--dev \
--dev.period 14 \
--http \

# --mine \
# --miner.etherbase="0x17ff1a448556095ce8aa4fd0b3d2229397653667" \
# --http.api eth,web3,net,miner \
# --http.corsdomain "http://remix.ethereum.org" \
# --allow-insecure-unlock \


# "$@"
