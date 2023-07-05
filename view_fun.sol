// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract viewfunc {
    function getResult() public view returns(uint product, uint sum){ 
        uint a = 1; 
        uint b = 2;
        product = a * b;
        sum = a + b;
}
}
