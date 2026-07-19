// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

/**
 * @dev Centralized custom errors for the Rune token ecosystem.
 */
library RuneErrors {
    error Rune__BlacklistedAccount(address account);
    error Rune__ZeroAddressProvided();
    error Rune__EcosystemIsPaused();
    
    error Rune__MaxSupplyExceeded(uint256 requested, uint256 allowed);
    error Rune__UnauthorizedAccess(address account, bytes32 neededRole);
}