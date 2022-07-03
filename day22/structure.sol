// SPDX-License-Identifier: MIT

pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    struct Book {
        string title;
        string author;
        uint256 book_id;
    }
    Book books;

    function setBook(
        string memory _titile,
        string memory _author,
        uint256 _id
    ) public {
        books = Book(_titile, _author, _id);
    }

    function getBook()
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        return (books.title, books.author, books.book_id);
    }
}
