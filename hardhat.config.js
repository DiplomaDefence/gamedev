require("dotenv").config();
require("@nomicfoundation/hardhat-toolbox");

const { ALCHEMY_URL, PRIVATE_KEY } = process.env;

module.exports = {
  networks: {
    hardhat: {},
    sepolia: {
      url: ALCHEMY_URL,
      accounts: [PRIVATE_KEY]
    }
  },
  solidity: "0.8.28",
};