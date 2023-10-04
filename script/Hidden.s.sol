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

    //forge script script/Hidden.s.sol:HiddenScript --rpc-url $SWISSTRONIC_TEST_RPC_URL --broadcast --verify -vvvv
    //forge script script/Hidden.s.sol:HiddenScript --rpc-url $MUMBAI_TEST_RPC_URL --broadcast --verify -vvvv
    // https://polygon-mumbai.infura.io/v3/4458cf4d1689497b9a38b1d
}
// Hash on swiss: 0x55eca93341ab7203d48de8fdcc8c1f79f15fbd3f93b817aca9bbad3cd71ff783
// Contract on swiss: 0xaBdc80973a609065D2a8AEf815eec4986311b4c2
// contract2: 0xb053549E7a06a9356Fd8D36C7255faF370e8141F

// Hash on Mumbai: 0x5171937520ecda455bddf86c1cce2bbfcb2d66e9d7520451869f13451789da52
// Contract on Mumbai: 0xEa98C8eE879bfcdDF7F8e3D16800f4B44914844e

//cast rpc [options] METHOD [PARAMS...]
//cast rpc -r $MUMBAI_TEST_RPC_URL eth_getStorageAt 0xEa98C8eE879bfcdDF7F8e3D16800f4B44914844e "0x00" "latest"
//cast rpc -r $SWISSTRONIC_TEST_RPC_URL eth_getStorageAt 0xaBdc80973a609065D2a8AEf815eec4986311b4c2 "0x00" "latest"


//cast send [options] to [sig] [args...]
// cast send --private-key $PRIVATE_KEY --rpc-url $SWISSTRONIC_TEST_RPC_URL 0xaBdc80973a609065D2a8AEf815eec4986311b4c2 "setPassword(uint)" 4