#!/bin/sh

# account new --password ./config/password

# run geth with arguments
# docker run -it \
# --net host \
# -v ~/workspace/pvt-bc/geth/data:/app/data \
# -v ~/workspace/pvt-bc/geth/keystore:/app/data/keystore \
# geth:latest "$@"

# run console with no logs
docker run -it --net host \
geth:latest \
attach http://127.0.0.1:8545 

# --verbosity 0 \