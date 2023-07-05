
// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Types {
    enum week_days
    {
        Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
        }
        week_days week;
        week_days choice;
        week_days constant 
        default_value = week_days.Sunday;
        
        function set_value() public {
            choice = week_days.Thursday;
            }
            function get_choice() public view returns (week_days) { 
                return choice;
                }
                function getdefaultvalue(

                ) public pure returns(week_days) { 
                    return default_value;
}
}
