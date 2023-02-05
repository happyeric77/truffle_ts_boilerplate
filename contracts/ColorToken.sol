// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract ColorToken is ERC20, AccessControl{
    bytes32 public constant minterRole = keccak256("MINTERROLE");
    bytes32 public constant burnerRole = keccak256("BURNERROLE");

    constructor(string memory tokenName, string memory tokenSymbol, uint totalSupply) ERC20(tokenName, tokenSymbol) {
        _mint(msg.sender, totalSupply);
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
    function mint(address to, uint amount) external onlyRole(minterRole)  {
        _mint(to, amount);
    }
    function burn(address from, uint amount) external onlyRole(burnerRole) {
        _burn(from, amount);
    }
}
