// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

// An contract in solidity is just like a class in an OOP 
contract Transactions {
    uint256 transactionCount;

    // An event is just like a function
    // address is a type and from is a variable name
    event Transfer(
        address from,
        address receiver, 
        uint amount, 
        string message, 
        uint256 timestamp, 
        string keyword 
     );

    // struct is just like an object
    struct TransferStruct {
        address sender;
        address reciever;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }   

    // Defining an array of TransferStruct called transactions
    TransferStruct[] transactions;

    function addToBlockchain(address payable reciever, uint amount, string memory message, string memory keyword) public{
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender,reciever, amount, message, block.timestamp, keyword));
        emit Transfer(msg.sender,reciever, amount, message, block.timestamp, keyword);

    }
    // a fuctions which retures an array of TransferStruct from memory
    function getAllTransactions() public view returns (TransferStruct[] memory){
        return transactions;
    }
    function getTransactionCount() public view returns (uint256) {
        return transactionCount;
    }
}  