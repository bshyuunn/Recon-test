
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {Test} from "forge-std/Test.sol";
import {console} from "forge-std/Console.sol";

import {TargetFunctions} from "./TargetFunctions.sol";
import {FoundryAsserts} from "@chimera/FoundryAsserts.sol";

contract CryticToFoundry is Test, TargetFunctions, FoundryAsserts {
    function setUp() public {
        setup();
        
        console.log("address(this): ", address(this));
    }

    function testDemo() public {
        // TODO: Given any target function and foundry assert, test your results

        console.log("flashLoanReceiver: ", address(flashLoanReceiver));
        console.log("naiveReceiverLenderPool: ", address(naiveReceiverLenderPool));
    }

    // https://getrecon.xyz/tools/medusa

    // forge test --match-test test_invariant_receiver_balance_not_less_initial_0 -vv 
    function test_invariant_receiver_balance_not_less_initial_0() public {
    
        vm.roll(30241);
        vm.warp(360522);
        vm.prank(0x0000000000000000000000000000000000030000);
        naiveReceiverLenderPool_flashLoan(0x6804A3FF6bcf551fACf1a66369a5f8802B3C9C58, 0);
        
        vm.roll(36696);
        vm.warp(368401);
        vm.prank(0x0000000000000000000000000000000000010000);
        invariant_receiver_balance_not_less_initial();
    }
            
}
