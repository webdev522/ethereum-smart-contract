pragma solidity ^0.4.0;

contract FuncConcert {
    
    address owner;
    uint public tickets;
    uint constant price = 1 ether;
    mapping (address => uint) public purchasers;
    
    function FuncConcert() {
        owner = msg.sender;
        tickets = 5;
    }
    
    function () payable public {buyTickets();}
    
    function buyTickets()  {
        
        require(msg.value != 0);
        uint amount = msg.value / price;
        purchasers[msg.sender] += amount;
        tickets -= amount;
        
        if (tickets == 0) {
            selfdestruct(owner);
        }
    }
}