FROM ethereum/client-go:release-1.10
# FROM ethereum/client-go:alltools-release-1.10

WORKDIR app

COPY scripts ./scripts

COPY genesis-proof-of-authority.json ./config/genesis.json
RUN geth --datadir ./data init ./config/genesis.json

ENTRYPOINT ["geth", "--datadir", "/app/data", "--dev", "--dev.period", "14", "--http"]
# CMD ["--dev", "--dev.period", "14", "--http"]