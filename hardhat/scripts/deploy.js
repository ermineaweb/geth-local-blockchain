// scripts/deploy.js
async function main() {
  const deployedContract = await hre.ethers.deployContract("Box");
  await deployedContract.waitForDeployment();
  console.log("SimpleStorage Contract Address:", deployedContract.target);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
