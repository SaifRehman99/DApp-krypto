
const main = async () => {

  const Transactions = await hre.ethers.getContractFactory("Transactions");
  const transaction  = await Transactions.deploy();

  await transaction.deployed();

  console.log('Transaction Deployed to ' + transaction.address);

}


const runMain = async () => {
  try {

    await main();
    process.exit(0)
    
  } catch (error) {
    console.log(error);
    process.exit(1)

  }
}


runMain()