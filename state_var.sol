// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SolidityTest {
    uint storedData; // State variable 
    constructor() public {
        storedData = 10;
        }
        function getResult() public view returns(uint){ 
            uint a = 1; // local variable
             uint b = 2;
             uint result = a + b;
             return result; //access the state variable
         }
         }

