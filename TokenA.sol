// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Este es un contrato similar al ejemplo dado

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenA is ERC20 {
    constructor(uint256 initialSupply) ERC20("TokenA", "TKA") {
        _mint(msg.sender, initialSupply);
    }
}
