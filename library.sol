// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */

library MathLibrary {
    function multiply(uint256 a, uint256 b) internal pure returns (uint256) {
        return a * b;
    }
}

contract Calculator {
    using MathLibrary for uint256;

    function calculate(uint256 a, uint256 b) external pure returns (uint256) {
        return a.multiply(b);
    }
}

//library StringLibrary {
//   function concatenate(string memory a, string memory b) internal pure returns (string memory) {
//        return string(abi.encodePacked(a, b));
//  }
//}

//contract StringConcatenator {
//  using StringLibrary for string;

//    function concatenateStrings(string memory a, string memory b) external pure returns (string memory) {
//        return a.concatenate(b);
//    }
//}