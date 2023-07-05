// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
abstract contract AbstractContract {
    function abstractFunction(uint256 value) external virtual returns (uint256);
}

contract Test is AbstractContract {
    function abstractFunction(uint256 value) external pure override returns (uint256) {
        return value * 2;
    }
}