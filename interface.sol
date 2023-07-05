// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
 interface MumbaiUniversity {
    function clg1() external pure returns (string[4] memory);

    function clg2() external pure returns (string[4] memory);
}

contract Test is MumbaiUniversity {
    function clg1() public pure override returns (string[4] memory) {
        string[4] memory sem_1 = [
            "Data Science",
            "Soft Computing",
            "Cloud Computing",
            "Research in Computing"
        ];
        return sem_1;
    }

    function clg2() public pure override returns (string[4] memory) {
        string[4] memory sem_2 = [
            "Image Processing",
            "Big Data",
            "Microservice",
            "Modern Networking"
        ];
        return sem_2;
    }
}