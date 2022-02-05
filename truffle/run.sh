#!/bin/sh

docker run -it \
--net host \
-v ~/workspace/pvt-bc/truffle/app:/app \
truffle:latest "$@"