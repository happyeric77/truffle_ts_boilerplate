// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./ColorToken.sol";

contract ProofCTK is ERC20 {
    uint deployedTimestamp;
    ColorToken ctk;
    constructor(string memory tokenName, string memory tokenSymbol, address colorToken) ERC20(tokenName, tokenSymbol) {
        deployedTimestamp = block.timestamp;
        ctk = ColorToken(colorToken);
    }
    function stake(uint amount) public {
        uint pCtkOut = amount / ((block.timestamp - deployedTimestamp) / 1 * 60 * 60); // time interval of 60 mins
        _mint(msg.sender, pCtkOut);
        ctk.burn(msg.sender, amount);
    }
    function unstake(uint amount) public {
        uint ctkOut = amount * ((block.timestamp - deployedTimestamp) / 1 * 60 * 60); // time interval of 60 mins
        _burn(msg.sender, amount);
        ctk.mint(msg.sender, ctkOut);
    }
    function _beforeTokenTransfer(address from,address to, uint256 amount) override internal pure {
        require(from != address(0) || to != address(0), "pCTK: not allowed to transfer proof token");
        super._beforeTokenTransfer;
    }
}
