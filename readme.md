# ERC20-ERC721 NFT Minting System

![Screenshot 2024-01-23 191815](https://github.com/Danishlynx/ERC721Minting_with_ERC20_token/assets/69537135/5a36439e-38f0-45ff-aa7a-fae8c4f7c738)


This project consists of three Ethereum smart contracts that enable the creation of Non-Fungible Tokens (NFTs) using an ERC20 token as the minting mechanism. The three smart contracts are as follows:

1. **ERC20 Token Contract**
   - Contract Name: `myToken`
   - Symbol: `MT`
   - Decimals: 18
   - License: MIT

   This smart contract represents the ERC20 token called "MyToken" (symbol: "MT"). It provides the following functionalities:

   - Minting of "MT" tokens.
   - Approval of token transfers between users.

2. **ERC721 NFT Contract**
   - Contract Name: `myNFT`
   - Symbol: `MNFT`
   - License: GPL-3.0

   This smart contract is designed to create ERC721 NFTs with the symbol "MNFT." It enforces a limited supply, allowing a maximum of 10 NFTs to be minted.

   - Minting of NFTs.
   - Metadata URI for NFTs.

3. **Authority Contract**
   - Contract Name: `MyAuthorityContract`
   - License: GPL-3.0

   The "MyAuthorityContract" smart contract serves as the authority responsible for receiving "MT" tokens and minting NFTs. It coordinates the interaction between the ERC20 token and ERC721 NFT contracts.

   - Minting NFTs with ERC20 Tokens.
   - Contract Initialization.
   - Metadata URI for NFTs.

## Usage

To create and manage NFTs using this system:

1. Deploy the ERC20 token contract, "myToken," to the Ethereum blockchain.

2. Deploy the ERC721 NFT contract, "myNFT," which will serve as the container for the NFTs.

3. Deploy the authority contract, "MyAuthorityContract," which coordinates minting by receiving "MT" tokens from users.

4. Users must approve the transfer of "MT" tokens to the authority contract using the approve function provided by the ERC20 token contract.

5. Users can mint NFTs by interacting with the authority contract, paying 10 "MT" tokens for each NFT minted.

The NFTs generated by the "myNFT" contract will have metadata accessible through the specified base URI.

## License

All smart contracts in this project are distributed under the respective licenses mentioned in each contract.

Note: This project demonstrates how to create an NFT minting system using an ERC20 token as a payment mechanism. Users should exercise caution when working with Ethereum smart contracts and cryptocurrency assets.
