// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract contraxt {
   address public richest;
   uint public mostSent;

   mapping (address => uint) pendingWithdrawals;

   constructor() public payable {
      richest = msg.sender;
      mostSent = msg.value;
   }
   function becomeRichest() public payable returns (bool) {
      if (msg.value > mostSent) {
         pendingWithdrawals[richest] += msg.value;
         richest = msg.sender;
         mostSent = msg.value;
         return true;
      } else {
         return false;
      }
   }
   function withdraw() public {
      uint amount = pendingWithdrawals[msg.sender];
      pendingWithdrawals[msg.sender] = 0;
      payable (msg.sender).transfer(amount);
   }
}