// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test, console} from "forge-std/Test.sol";
import {ethwallet} from "../src/ethwallet.sol";

contract ethwalletTest is Test {
    ethwallet public ethWallet;

    function setUP() external returns (ethwallet) {
        ethWallet = new ethwallet();
        return (ethWallet);
    }

    function checkownertest() external view {
        assertEq(address(this).balance, 5 ether);
        console.log("total remaing balance", address(this).balance);
    }
}
