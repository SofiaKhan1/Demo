// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Types {
    uint i = 10;
   function decision_making() public view returns(uint){ 
        if (i%2 == 0){
            return 1;
            }
            else{
                return 2;
            }
    }
}