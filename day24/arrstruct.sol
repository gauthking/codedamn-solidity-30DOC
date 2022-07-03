// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
    struct Student {
        string name;
        uint256[3] marks;
    }

    Student std;

    function set(
        string memory n,
        uint256 m1,
        uint256 m2,
        uint256 m3
    ) public {
        uint256 count = 0;
        std.name = n;
        std.marks[count] = m1;
        count++;
        std.marks[count] = m2;
        count++;
        std.marks[count] = m3;
    }

    function get()
        public
        view
        returns (
            string memory,
            uint256,
            uint256,
            uint256
        )
    {
        return (std.name, std.marks[0], std.marks[1], std.marks[2]);
    }
}
