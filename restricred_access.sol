// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract Test {
   address public owner = msg.sender;
   uint public creationTime = block.timestamp;

   modifier onlyBy(address _account) {
      require(
         msg.sender == _account,
         "Sender not authorized."
      );
      _;
   }
   function changeOwner(address _newOwner) public onlyBy(owner) {
      owner = _newOwner;
   }
   modifier onlyAfter(uint _time) {
      require(
         block.timestamp >= _time,
         "Function called too early."
      );
      _;
   }
   function disown() public onlyBy(owner) onlyAfter(creationTime + 6 weeks) {
      delete owner;
   }
   modifier costs(uint _amount) {
      require(
         msg.value >= _amount,
         "Not enough Ether provided."
      );
      _;
      if (msg.value > _amount)
         msg.sender.transfer(msg.value - _amount);
   }
   function forceOwnerChange(address _newOwner) public payable costs(200 ether) {
      owner = _newOwner;
      if (uint(owner) & 0 == 1) return;        
   }
}