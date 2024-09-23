// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "IERC20.sol";

contract TokenApprover {
    // Address of the token you want to approve
    address public tokenAddress;

    constructor(address _tokenAddress) {
        tokenAddress = _tokenAddress;
    }

    // Approve spending of tokens
    function Recieve(address spender, uint256 amount) external {
        IERC20(tokenAddress).approve(spender, amount);
    }
}
