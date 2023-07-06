// contracts/Box.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Sum {
    event log(address add, string message);

    // Stores a new value in the contract
    function sum(uint32 valueA, uint32 valueB) public returns (uint32) {
        emit log(msg.sender, "we do the sum");
        console.log("we do the sum");
        return valueA + valueB;
    }
}
