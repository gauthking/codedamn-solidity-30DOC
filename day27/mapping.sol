// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Day3 {
    mapping(address => uint256) bal;

    function updateBalance(uint256 bals) public {
        bal[msg.sender] = bals;
    }

    function checkBalance(address add) public view returns (uint256) {
        require(msg.sender == add, "You are not the owner of the account");
        return bal[add];
    }
}
