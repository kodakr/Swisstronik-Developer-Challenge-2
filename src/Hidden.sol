// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Hidden {
    uint private password;

    function setPassword(uint _password) public {
        password = _password;
    }
    function getPassword() public view returns(uint _password) {
        _password = password;
    }
    
}
