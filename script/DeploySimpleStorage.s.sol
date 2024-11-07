// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "forge-std/Script.sol"; //to import the Script.sol file from the forge-std library
import "../src/SimpleStorage.sol"; //to import the SimpleStorage.sol file from the src directory

contract DeploySimpleStorage is Script {
    function run() external returns (SimpleStorage) {
        //run keyword is used to run the deploy function
        vm.startBroadcast(); // vm is a special keyword in Solidity related to something called cheat codes, vm only works in foundry
        // the above line says that every line after it you should send to the rpc
        SimpleStorage simpleStorage = new SimpleStorage(); //deploys the new SimpleStorage contract as simpleStorage
        vm.stopBroadcast();
        return simpleStorage;
    }
}
