FROM ethereum/client-go:release-1.11

WORKDIR app
RUN mkdir -p data

# COPY scripts ./scripts
COPY keystore ./keystore

COPY genesis-proof-of-work.json ./config/genesis.json
RUN geth --datadir ./data init ./config/genesis.json

ENTRYPOINT ["geth"]