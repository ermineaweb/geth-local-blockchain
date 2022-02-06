#!/bin/sh

# run geth with arguments
docker run -it --net host \
-v ~/workspace/pvt-bc/geth/mainnet:/app/mainnet \
geth:latest \
--datadir "/app/mainnet" \
"$@"