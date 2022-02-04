# Local blockchain network with Geth

## Usage

Build the docker image

```bash
./build.sh
```

Start the local blockchain network with default options

```bash
./run.sh
```

Connect to the blockchain

```bash
./run.sh attach
```

Create a new account

```javascript
personal.newAccount();
```

Transfer ether from coinbase to the new account

```javascript
eth.sendTransaction({
  from: eth.coinbase,
  to: eth.accounts[1],
  value: web3.toWei(0.05, "ether"),
});
```

Check the balance of the account

```javascript
eth.getBalance(eth.accounts[1]);
```
