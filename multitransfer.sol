// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface ERC20 {
    function transfer(address, uint256) external returns (bool);
}

contract MultiTransfer {
    ERC20 public token;

    constructor(address _tokenAddress) {
        token = ERC20(_tokenAddress);
    }

    function transferTokens(address[] memory _recipients, uint256[] memory _amounts) public {
        require(_recipients.length == _amounts.length, "Invalid input length");

        for (uint256 i = 0; i < _recipients.length; i++) {
            require(token.transfer(_recipients[i], _amounts[i]), "Token transfer failed");
        }
    }
}
