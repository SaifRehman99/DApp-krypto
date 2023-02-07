// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Transactions {

    // variable
    uint256 transactionCount;

    // event to emit
    event Transfer(address from, address receiver, uint amount, string message, uint256 timestamp, string keyword);

    // its like a type of transaction
    struct TransferStruct {
        address from;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    //  array of object of transactions
    TransferStruct[] transactions;




    // function definitions
    // memory -> data stores in the memory of that transaction

    function addToBlockChain(address payable receiver, uint amount, string memory message, string memory keyword) public {

        // adding to transaction array
        transactionCount +=1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp, keyword));

        // now doing the real transaction here
        emit Transfer(msg.sender, receiver, amount, message, block.timestamp, keyword);


    }

    function getAllTransactions() public view returns(TransferStruct[] memory) {
        return transactions;
    }

    
    function getTransactionCount() public view returns(uint256) {
        return transactionCount;
    }
}