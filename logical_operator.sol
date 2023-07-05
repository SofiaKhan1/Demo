// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract logicalOperator{
    function Logic(
        bool a, bool b) public view returns( bool, bool, bool){
            bool and = a&&b;
            bool or = a||b;
            bool not = !a;
            return (and, or, not);
            }
            }
