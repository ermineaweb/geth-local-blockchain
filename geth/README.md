# Geth local blockchain

### Accounts with blank password

```
0x17ff1a448556095ce8aa4fd0b3d2229397653667
0x7231a131c9f25c8ffa24396a4767c0b858e4f205
0x57636e31274b771508b696a98270bf564d4f5807
0xd357281c8c6adac1631062bffa8eca2f1ced6e6c
0xbbe426af176ee4b7d4a0c8aead8a9e4f8d794ab6
```

### Commands

Connect to the blockchain

```bash
./run.sh attach
```

Send ether

```javascript
eth.sendTransaction({
  from: eth.accounts[0],
  to: eth.accounts[1],
  value: web3.toWei(1000, "ether"),
});
```

Load scripts

```javascript
loadScript("/app/scripts/balances.js");
```

```javascript
personal.newAccount();
```

```javascript
eth.getBalance(eth.accounts[1]);
```

```javascript
eth.getBalance("0x7231a131c9f25c8ffa24396a4767c0b858e4f205");
```

Run a signer

```
--allow-insecure-unlock -unlock 0x7231a131c9f25c8ffa24396a4767c0b858e4f205 --mine
```

Run a miner

```
--mine --miner.threads=1 --miner.etherbase=0x7231a131c9f25c8ffa24396a4767c0b858e4f205
```
