// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SolidityTest{
    function sub(uint a, uint b) public view returns( uint){
            uint result = (a > b? a-b : b-a); 
            return result;
}
}
