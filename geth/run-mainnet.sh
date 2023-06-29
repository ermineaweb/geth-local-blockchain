#!/bin/sh

LOCAL_PATH=$(pwd)

docker run -it --net host \
-v "$LOCAL_PATH"/mainnet:/app/mainnet \
geth:latest \
--datadir "/app/mainnet" \
"$@"