# CertificateNFT Smart Contract

A simple **NFT-based certificate issuance and verification** smart contract deployed on the **Sepolia testnet**.  
This project allows the contract owner to issue unique certificates as NFTs and anyone to verify them.

## 🔹 Features

- Issue certificates as NFTs to any Ethereum address.
- Verify ownership of a certificate by wallet address.
- Keep track of certificate metadata (`certificateId` and recipient).
- Standard NFT features:
  - `balanceOf(address)` – check how many certificates an address owns.
  - `ownerOf(tokenId)` – get the owner of a specific certificate.

## 🛠️ Contract Details

- **Contract Name:** CertificateNFT  
- **Symbol:** CERT  
- **Deployed On:** Sepolia Testnet  
- **Contract Address:** `0xf17A1C273687Eae151AEB7D22299F830B5d55DE0`  
- **Solidity Version:** 0.8.0  

## 📄 Functions

### **Owner-Only**
- `issueCertificate(address _recipient, string memory _certificateId)`  
  Issue a certificate NFT to a specific address.

### **Public**
- `verifyCertificate(uint256 _tokenId, address _wallet) -> bool`  
  Verify if a given wallet owns a specific certificate.

- `balanceOf(address _owner) -> uint256`  
  Check the number of certificates an address owns.

- `ownerOf(uint256 tokenId) -> address`  
  Check who owns a particular certificate NFT.
  
## ⚡ Usage

1. Open [Remix](https://remix.ethereum.org) and paste the contract code (`CertificateNFT.sol`).  
2. Compile using Solidity 0.8.x.  
3. Deploy to **Sepolia testnet**.  
4. Use the following functions in Remix:
   - `issueCertificate()` → to mint a certificate.
   - `verifyCertificate()` → to verify certificate ownership.

## 📌 Features

- Only the contract owner can issue certificates.
- Certificates are uniquely identified by `tokenId` and `certificateId`.


## Screenshots of deployed contract
<img width="422" height="762" alt="Screenshot 2025-09-09 214856" src="https://github.com/user-attachments/assets/af8ec2c8-772d-4dcc-b46d-8f88027c76d9" />
<img width="394" height="701" alt="Screenshot 2025-09-09 214906" src="https://github.com/user-attachments/assets/49ae3149-1cea-4e67-a988-6e0f3a2e24b1" />
<img width="397" height="493" alt="Screenshot 2025-09-09 214912" src="https://github.com/user-attachments/assets/5de6ac3e-d4d8-4201-857f-e893288e761c" />


