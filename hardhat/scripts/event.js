const ethers = require("ethers");
const contract = require("../artifacts/contracts/Sum.sol/Sum.json");

async function main() {
  // Provider
  const log = new ethers.ethers.EventLog();
  const message = await log.message();
  console.log("The message is: " + message);
}

main();
