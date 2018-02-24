pragma solidity ^0.4.0;

contract WhatTheFunc {
    
    string word = "bird";
    uint number = 42;
    address owner;
    
    function WhatTheFunc() {
        word = "bird";
        number = 42;
        owner = msg.sender;
    }
    
    event Changed(address a);
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    
    function getWord() constant returns (string) {
        return word;
    }
    
    function setWord(string w) onlyOwner {
        word = w;
        Changed(msg.sender);
    }
}