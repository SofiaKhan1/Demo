// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract eventExample {
    uint256 public value = 0;
    event Increment(address owner);
    function getValue(uint _a, uint _b) public { 
        emit Increment(msg.sender);
        value = _a + _b;
        }
        }
