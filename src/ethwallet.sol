// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

//Notes
// 1)Anyone can add send Eth.//
// 2)Only the owner can withdarw the money.//

contract ethwallet {
    uint256 public amount;
    address payable public owner;
    mapping(address => uint256) public totalInvesetment;

    constructor() {
        owner = payable(msg.sender);
    }

    function addMonery() external payable returns (uint256) {
        amount += msg.value;
        return totalInvesetment[address(msg.sender)] = amount;
    }

    function withdraw() external {
        require(msg.sender == owner, "is not owner");
        (bool Suceess, ) = msg.sender.call{value: address(this).balance}("");
        require(Suceess, "transcation not completed");
    }
}
