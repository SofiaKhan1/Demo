// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract test { 
    struct Book { 
        string title; 
        string author; 
        uint book_id;
        }
        Book book;
        function setBook() public {
            book = Book('Learn Java', 'TP', 1);
            }
            function getBookId() public view returns (uint) { 
                return book.book_id;
                }
                }
