// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
    struct Book {
        string title;
        string author;
        uint256 id;
    }

    Book[5] types;
    uint256 count = 1;

    // _ is used to differentiate btw global variables and the function args

    function setBook(
        string memory _title,
        string memory _author,
        uint256 _id
    ) public {
        types[count] = Book(_title, _author, _id);
        count++;
    }

    function getBook(uint256 _count)
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (types[_count].title, types[_count].author, types[_count].id);
    }
}
