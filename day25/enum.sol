// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
    enum House {
        SMALL,
        MEDIUM,
        LARGE
    }
    House h;

    function setLarge() public {
        h = House.LARGE;
    }

    function getChoice() public view returns (House) {
        return h;
    }
}
