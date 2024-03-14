// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Script} from "forge-std/Script.sol";
import {ethwallet} from "../src/ethwallet.sol";

contract deploy is Script {
    function run() external returns (ethwallet) {
        vm.startBroadcast();
        ethwallet Ethwallet = new ethwallet();
        vm.stopBroadcast();
        return Ethwallet;
    }
}
