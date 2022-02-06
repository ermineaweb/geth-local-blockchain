#!/bin/sh


# run console with no logs
docker run -it --net host \
geth:latest \
--allow-insecure-unlock \
--unlock 0x7231a131c9f25c8ffa24396a4767c0b858e4f205 \
--mine \
attach http://127.0.0.1:8545 
