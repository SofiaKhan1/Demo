// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract ConstructorDemo {
    uint256 public value;

    constructor(uint256 initialValue) {
        value = initialValue; // Initialize the value with the provided initial value during contract deployment
    }
}