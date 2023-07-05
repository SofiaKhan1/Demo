// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Loops {
    uint256 private result = 0;

    function whileLoop(uint256 number) public returns (uint256) {
        uint256 i = 1;
        while (i <= number) {
            result += i;
            i++;
        }
        return result;
    }

    function getWhileLoop() public view returns (uint256) {
        return result;
    }


    uint256 private result1 = 0;

    function doWhileLoop(uint256 number) public returns (uint256) {
        uint256 i = 1;
        do {
            result1 += i;
            i++;
        } while (i <= number);
        return result1;
    }

    function getDoWhileLoopResult() public view returns (uint256) {
        return result1;
    }

  

    uint256 private result2 = 0;

    function forLoop(uint256 number) public returns (uint256) {
        for (uint256 i = 1; i <= number; i++) {
            result2 += i;
        }
        return result2;
    }

    function geForLoop() public view returns (uint256) {
        return result2;
    }
}