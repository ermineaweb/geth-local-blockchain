#!/bin/sh

LOCAL_PATH=$(pwd)

file="Address"

docker run \
-v "$LOCAL_PATH"/../truffle/app/contracts:/app/contracts \
-v "$LOCAL_PATH"/geth/abi:/app/abi \
ethereum/solc:stable \
-o /app/abi --abi /app/contracts/"$file".sol

docker run \
-v "$LOCAL_PATH"/abi:/app/abi \
ethereum/client-go:alltools-release-1.10 \
abigen --abi /app/abi/"$file".abi --pkg main --type "$file" --out /app/abi/"$file".go

# docker run \
# -v ~/workspace/pvt-bc/geth/abi:/app/abi \
# -v ~/workspace/pvt-bc/truffle/app/contracts:/app/contracts \
# ethereum/client-go:alltools-release-1.10 \
# abigen --sol /app/contracts/"$file".sol --pkg main --out /app/abi/"$file".go