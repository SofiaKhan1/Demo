// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract mapp{
    mapping(uint=>string) public roll_no;
    function setter(uint key, string memory value) public{
        roll_no[key]=value;
    }
}