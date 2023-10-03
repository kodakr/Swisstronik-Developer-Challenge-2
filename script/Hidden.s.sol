// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/Hidden.sol";
import "forge-std/console.sol";

contract HiddenScript is Script {
    function setUp() public {} 

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);
        Hidden hidden = new Hidden();
        vm.stopBroadcast();
        console.log("addr==+===", address(hidden));
    }
}
