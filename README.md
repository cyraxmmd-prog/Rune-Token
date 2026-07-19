🪙 Rune Token 
A decentralized utility and governance token designed for hierarchical digital ecosystems.

Rune Token ($RUNE) is the core economic engine built specifically to power the Tarnished Marketplace and its companion hierarchical NFT ecosystem. Inspired by the lore of Elden Ring, $RUNE transitions away from legacy token structures by integrating modern cryptographic signatures for gasless transactions and granular role-based permissions, remaining fully compatible with the Ethereum ERC-20 standard.

The project was developed in Solidity using OpenZeppelin Contracts (v5.x) and deployed through Remix IDE on the Ethereum Sepolia network.

✨ Features
* ERC-20 compatible utility token
* Gasless approvals via EIP-2612 (Permit)
* Role-Based Access Control (RBAC)
* Hard-capped maximum supply
* Parameterized custom errors for gas optimization
* Emergency ecosystem pause/unpause
* Address blacklisting and asset freezing
* Centralized state transition validation
* Full MetaMask integration compatibility

🏗 Token Workflow
Admin / Ecosystem
   │
   ▼ Grant Minter Role
   │
   ▼ Mint $RUNE to User
   │
   ▼ User Signs Offline Permit
   │
   ▼ Marketplace Spends Permit (Gasless for User)
   │
   ▼ Tokens Transferred / Burned

📊 Tokenomics & Specifications
| Parameter | Value | Details |
| :--- | :--- | :--- |
| **Token Name** | Rune | Core currency of the Lands Between |
| **Ticker** | RUNE | Official ecosystem utility symbol |
| **Decimals** | 18 | Standard EVM fractional precision |
| **Max Supply** | 1,000,000,000 $RUNE | Hard-capped immutable supply |
| **Target Network** | Ethereum Sepolia | Deployed for ecosystem integration testing |

🔒 Security
The token contract includes several production-grade security mechanisms:
* AccessControl (RBAC) replacing centralized Ownable controls
* ERC20Pausable circuit breaker for emergency stops
* Monolithic state transition validation via internal `_update` hook
* Radical blacklist mapping to freeze malicious entities
* Zero-address input validation checks
* Explicit versioning protection against upstream dependency updates

📂 Project Structure
contracts/
 │
 ├── RuneToken.sol      # Core implementation contract
 ├── IRuneToken.sol     # Public-facing ecosystem interface
 └── RuneErrors.sol     # Centralized gas-optimized custom errors

📜 Token Events
The contract emits standard and custom events for indexing and frontend tracking:
* Transfer
* Approval
* AccountBlacklisted
* AccountUnblacklisted
* Paused
* Unpaused

⚙️ Technologies
* Solidity
* Ethereum
* ERC-20 / EIP-2612
* OpenZeppelin Contracts
* MetaMask
* Sepolia Testnet

🎯 Future Roadmap
* Staking Rewards System
* Automated Yield Treasury Integration
* DAO Governance Module ($RUNE Voting)
* In-Game Economy Faucet Integration
* Multi-Chain Bridge Support
* Gasless Gas-Station Relayer Integration

🚀 Deployment
* **Network**: Ethereum Sepolia
* **Wallet**: MetaMask
* **Environment**: Injected Provider

📄 License
MIT License
