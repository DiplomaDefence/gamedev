# Development of a Blockchain-Based Gaming System

## Overview

This project, hosted at [https://github.com/DiplomaDefence/gamedev/](https://github.com/DiplomaDefence/gamedev/), is being developed as a **Diploma Project** by the following students:

- **Андронов Максим Дмитриевич** (Student ID: 31590)  
- **Чивердин Эдуард Александрович** (Student ID: 31583)  
- **Абилов Мирас** (Student ID: 31176)  

The goal is to create a **Blockchain-Based Gaming System** that utilizes **Non-Fungible Tokens (NFTs)** for in-game assets, enables secure transactions, and explores the economic potential of blockchain technology in gaming.

---

## Features
- **NFT Integration**: Use NFTs to represent unique in-game assets such as characters, skins, and weapons.
- **Blockchain Transactions**: Secure, decentralized transactions for in-game purchases and trades.
- **Testing**: Comprehensive testing strategies for both smart contracts and user interactions.
- **Economic Insights**: Analysis of the advantages and value of blockchain in the gaming ecosystem.

---

## Project Structure

```plaintext
project/
├── contracts/          # Smart contracts for NFT and game logic
├── tests/              # Test scripts for contracts and transactions
├── src/                # Frontend and backend application code
├── docs/               # Documentation for APIs and features
├── README.md           # Project overview and instructions
├── package.json        # Project dependencies
├── hardhat.config.js   # Configuration for the Hardhat development environment
└── .env                # Environment variables (e.g., private keys, API endpoints)
```

---

## Setup

### Prerequisites
1. **Node.js**: Install the latest version.
2. **Hardhat**: Development environment for Ethereum.
3. **Metamask**: Browser wallet extension.
4. **Blockchain Testnet**: Use **Polygon Mumbai**, **Binance Smart Chain Testnet**, or **Ethereum Goerli**.

### Installation Steps
1. Clone the repository:
   ```bash
   git clone https://github.com/DiplomaDefence/gamedev.git
   ```
2. Navigate to the project directory:
   ```bash
   cd gamedev
   ```
3. Install dependencies:
   ```bash
   npm install
   ```
4. Configure environment variables in `.env`:
   ```plaintext
   PRIVATE_KEY=<Your Private Key>
   INFURA_API_KEY=<Your Infura API Key>
   ```
5. Compile smart contracts:
   ```bash
   npx hardhat compile
   ```

---

## How to Use NFTs

### NFT Overview
Non-Fungible Tokens (NFTs) are unique digital assets stored on the blockchain. In this system, NFTs are used to represent in-game items such as rare collectibles and characters.

### Creating NFTs
Use the ERC-721 or ERC-1155 standards to mint NFTs. Example script:

```javascript
const { ethers } = require("hardhat");

async function main() {
    const nftContract = await ethers.getContractFactory("GameNFT");
    const deployedNFT = await nftContract.deploy();
    await deployedNFT.deployed();
    console.log("NFT Contract deployed to:", deployedNFT.address);

    await deployedNFT.mint("0xYourWalletAddress", 1, "ipfs://YourMetadataLink");
    console.log("NFT Minted!");
}

main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
});
```

---

## How to Use Transactions

### Transaction Workflow
1. **In-game Purchases**: Players can use cryptocurrency to buy items.
2. **Player Trades**: Secure player-to-player trading through smart contracts.

Example contract for payments:
```solidity
pragma solidity ^0.8.0;

contract GamePayment {
    function buyItem(address payable seller) public payable {
        require(msg.value > 0, "Payment must be greater than 0");
        seller.transfer(msg.value);
    }
}
```

---

## Testing the System

### What to Test
- **Smart Contracts**: Ensure the logic for minting, transferring, and purchasing NFTs is correct.
- **Frontend**: Simulate user interactions and verify transaction workflows.
- **Security**: Check for vulnerabilities using tools like **MythX** or **Slither**.

### Running Tests
```bash
npx hardhat test
```

Sample test script:
```javascript
const { expect } = require("chai");

describe("GameNFT", function () {
    it("Should mint an NFT successfully", async function () {
        const GameNFT = await ethers.getContractFactory("GameNFT");
        const nft = await GameNFT.deploy();
        await nft.deployed();

        const mintTx = await nft.mint("0xYourWalletAddress", 1, "ipfs://metadata-link");
        await mintTx.wait();

        expect(await nft.ownerOf(1)).to.equal("0xYourWalletAddress");
    });
});
```

---

## NFT Technologies

- **ERC-721**: Standard for unique NFTs.
- **ERC-1155**: Multi-token standard for both fungible and non-fungible tokens.
- **IPFS**: Decentralized file storage for metadata.

---

## Economic Value and Advantages

### Market Potential
- Blockchain gaming is transforming in-game asset ownership and monetization.
- Games like **Axie Infinity** and **Gods Unchained** showcase how NFTs create new revenue streams.

### Advantages of Blockchain in Gaming
1. **Ownership**: Players have real ownership of in-game assets.
2. **Transparency**: Immutable transaction records ensure trust.
3. **Security**: Reduced risk of fraud or asset duplication.
4. **Interoperability**: NFTs can be used across different games.

---

## Recommendations for Early Developers

### Developer-Friendly Networks
1. **Polygon (MATIC)**: Low fees, fast processing, Ethereum-compatible.
2. **Binance Smart Chain (BSC)**: Cost-effective, widely used.
3. **Ethereum Testnets (Goerli, Rinkeby)**: Ideal for testing.

---

## Request for Comments
Feedback and suggestions are welcome for:
- Improving NFT features.
- Enhancing transaction workflows.
- Expanding testing and security measures.

Please submit feedback via GitHub issues or email us at [email@example.com].

---

### Developers
- **Андронов Максим Дмитриевич** (31590)  
- **Чивердин Эдуард Александрович** (31583)  
- **Абилов Мирас** (31176)  

---
