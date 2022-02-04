FROM ethereum/client-go:release-1.10
# FROM ethereum/client-go:alltools-release-1.10

WORKDIR app
RUN mkdir blockchain && chmod 1777 blockchain -R

ENTRYPOINT ["geth", "--datadir", "/app/blockchain"]
CMD ["--dev", "--dev.period", "14", "--http", "--http.corsdomain", "https://remix.ethereum.org,http://remix.ethereum.org"]
