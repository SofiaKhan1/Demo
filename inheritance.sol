// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract MumbaiUniversity {
    uint256[] internal rollNumbers;

    constructor() {
        for (uint256 i = 1; i < 20; i++) {
            rollNumbers.push(i);
        }
    }

    function getRollNumbers() public view returns (uint[] memory) {
        return rollNumbers;
    }
}

contract Clg1 is MumbaiUniversity {
    uint256[] private enrolledToClg1;

    constructor() {
        for (uint256 i = 0; i < 10; i++) {
            enrolledToClg1.push(rollNumbers[i]);
        }
    }

    function getEnrolled1() public view returns (uint256[] memory) {
        return enrolledToClg1;
    }

}

contract Clg2 is MumbaiUniversity {
    uint256[] private enrolledToClg2;

    constructor() {
        for (uint256 i = 10; i < rollNumbers.length; i++) {
            enrolledToClg2.push(rollNumbers[i]);
        }
    }

    function getEnrolledS() public view returns (uint256[] memory) {
        return enrolledToClg2;
    }
}