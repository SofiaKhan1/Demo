// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract whilelooptest { 
    uint[3] public arr;
    uint count;
    function whileloop() public{
        while (count<arr.length)
        {
            arr[count]=count;
            count++;
        }
    }
    function getWhileLoop() public view returns (uint256) {
        return count;
    }
    }