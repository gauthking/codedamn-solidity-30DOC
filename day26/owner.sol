// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
    address add;

    constructor() {
        add = msg.sender;
    }

    function returnOwner() public returns (address) {
        require(add == msg.sender, "You are not the owner");
        return add;
    }
}
