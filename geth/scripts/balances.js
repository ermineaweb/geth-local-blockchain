function balances() {
  let totalBalance = 0;
  for (const acc of eth.accounts) {
    const accBalance = web3.fromWei(eth.getBalance(acc), "ether");
    totalBalance += parseFloat(accBalance);
    console.log(`{${acc}}\tbalance: ${accBalance} ether`);
  }
  console.log(`total balance: ${totalBalance} ether`);
}
