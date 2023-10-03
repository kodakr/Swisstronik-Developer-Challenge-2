// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/Hidden.sol";

contract HiddenTest is Test {
    Hidden hidden;
    function setUp() public {
        hidden = new Hidden();
    }

    function testPass(uint a) public {
        hidden.setPassword(a);
        assertEq(a, hidden.getPassword());
    } 

}
