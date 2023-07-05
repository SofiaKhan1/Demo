// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract ArrayTypes {
    
    uint[4] rollNumbers;

    function setRollNumbers(uint _index, uint _rollNumber) public {
        rollNumbers[_index] = _rollNumber;
    }

    function getRollNumbers() public view returns (uint[4] memory) {
        return rollNumbers;
    }}