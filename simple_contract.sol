// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SimpleContract {
    uint256 public value;

    constructor() {
        value = 0;
    }
    function setValue(uint256 newValue) external {
        value = newValue; 
    }
    function getValue() external view returns (uint256) {
        return value *2; 
    }
}