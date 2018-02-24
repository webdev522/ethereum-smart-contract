pragma solidity ^0.4.0;

contract Hello {
    
    string name;
    
    function Hello() {
        name = "Bob";    
    }
    
    function sayHello() constant returns (string, string) {
        return ("Hello", name);
    }
    
    function setName(string n) {
        name = n;
    }
}