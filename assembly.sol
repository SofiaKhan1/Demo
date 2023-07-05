// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract AssemblyExample {
    function addNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result;

        assembly {
            result := add(a, b)
        }

        return result;
    }
    function mullNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result;

        assembly {

            result := mul(a, b)
        }

        return result;
    }
}