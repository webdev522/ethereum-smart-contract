pragma solidity ^0.4.0;

import './Groups.sol';

contract LibraryFun {
   
    Groups.Group admins;
    
    event Success();
    
    modifier onlyAdmins() {
        require(admins.members[msg.sender]);
        _;
    }
    
    function LibraryFun() {
        Groups.addMember(admins, msg.sender);
    }
    
    function add(address addr) onlyAdmins {
        if (Groups.addMember(admins, addr)) {
            Success();
        }       
    }
    
    function remove(address addr) onlyAdmins {
        if (Groups.delMember(admins, addr)) {
            Success();
        }       
    }
    
}