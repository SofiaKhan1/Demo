// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract WhileLoopExample {
    uint[] public numbers;
    
    function whileloop() public {
        uint i = 1;
        while (i <= 10) {
            if (i % 2 == 0)
            {
            numbers.push(i);
            }
            i++;
        }
    }
    
    function getNumbers() public view returns (uint[] memory) {
        return numbers;
    }
}