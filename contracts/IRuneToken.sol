// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {IERC20} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v5.0.2/contracts/token/ERC20/IERC20.sol";

/**
 * @dev Interface for the Rune Ecosystem Token ($RUNE).
 */
interface IRuneToken is IERC20 {
    
    event AccountBlacklisted(address indexed account);
    event AccountUnblacklisted(address indexed account);

    function mint(address to, uint256 amount) external;
    function burn(uint256 amount) external;
    function blacklistAccount(address account) external;
    function unblacklistAccount(address account) external;
}