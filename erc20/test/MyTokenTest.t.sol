// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

import {Test} from "forge-std/Test.sol";
import {DeployMyToken} from "../script/DeployMyToken.s.sol";
import {MyToken} from "../src/MyToken.sol";

contract TestMyToken is Test {
    MyToken public newToken;
    DeployMyToken public deployer;

    address bob = makeAddr("bob");
    address alice = makeAddr("Alice");

    uint256 public constant STARTING_BALANCE = 100 ether;

    function setUp() public {
        deployer = new DeployMyToken();
        newToken = deployer.run();

        vm.prank(msg.sender);
        newToken.transfer(bob, STARTING_BALANCE);
    }

    function testBobBalance() public view {
        assertEq(STARTING_BALANCE, newToken.balanceOf(bob));
    }

    function testAllowance() public {
        uint256 initialAllowance = 1000;

        // Bob approves Alice
        vm.prank(bob);
        newToken.approve(alice, initialAllowance);

        uint256 transferAmount = 500;
        // Alice transfers
        vm.prank(alice);
        newToken.transferFrom(bob, alice, transferAmount);

        assertEq(newToken.balanceOf(bob), STARTING_BALANCE - transferAmount);
        assertEq(newToken.balanceOf(alice), transferAmount);
    }
}
