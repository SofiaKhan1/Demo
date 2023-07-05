// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
 contract Test {
     function callAddMod() public pure returns(uint){ 
         return addmod(4, 5, 3);
         }
         function callMulMod() public pure returns(uint){ 
             return mulmod(4, 5, 3);
         }
         }
