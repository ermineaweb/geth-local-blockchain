# Sample Hardhat Project

This project demonstrates a basic Hardhat use case. It comes with a sample contract, a test for that contract, and a script that deploys that contract.

Try running some of the following tasks:

```shell
npx hardhat help
npx hardhat test
REPORT_GAS=true npx hardhat test
npx hardhat node
npx hardhat compile
npx hardhat run --network localhost scripts/deploy.js
npx hardhat console --network localhost
```

```javascript
const Sum = await ethers.getContractFactory("Sum");
const sum = await Sum.attach("0x5FbDB2315678afecb367f032d93F642f64180aa3");
await sum.sum(3, 2);
(await sum.get()).toString();
```

```javascript
const sumEvent = sum.voteCast();
sumEvent.watch(function (err, result) {
  console.log(result);
});
```
