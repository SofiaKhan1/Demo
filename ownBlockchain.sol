// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract SimpleBlockchain {
    struct Block {
        uint timestamp;
        string data;
        bytes32 previousHash;
        bytes32 hash;
    }

    mapping(uint => Block) public blockchain;
    uint public blockCount;

    constructor() {
        createGenesisBlock();
    }

    function createGenesisBlock() private {
        blockCount = 0;
        addBlock("Genesis Block", bytes32(0));
    }

    function addBlock(string memory _data, bytes32 _previousHash) public {
        blockCount++;
        Block memory newBlock = Block(block.timestamp, _data, _previousHash, bytes32(0));
        newBlock.hash = calculateHash(newBlock.timestamp, newBlock.data, newBlock.previousHash);
        blockchain[blockCount] = newBlock;
    }

    function calculateHash(uint _timestamp, string memory _data, bytes32 _previousHash) private pure returns (bytes32) {
        return keccak256(abi.encodePacked(_timestamp, _data, _previousHash));
    }
}