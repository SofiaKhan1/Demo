// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Solidity_var_Test {
    function getResult() public view returns(uint){
        uint local_var1 = 1;
        uint local_var2 = 2;
        uint result = local_var1 + local_var2;
        return result;
    }
}