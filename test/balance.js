require("dotenv").config();
const hre = require("hardhat");
const { ethers: baseEthers } = require("ethers");

async function main() {
  const walletAddress = process.env.WALLET_ADDRESS;
  console.log("Checking balance for:", walletAddress);
  const balance = await hre.ethers.provider.getBalance(walletAddress);
  console.log(`Balance: ${baseEthers.formatEther(balance)} ETH`);
  console.log("Balance in wei:", balance.toString());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
