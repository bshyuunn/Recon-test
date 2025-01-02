
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
        vm.roll(22044);
        vm.warp(42162);
        vm.prank(0x0000000000000000000000000000000000030000);
        hanlder_receiverFlashLoan(13803492693581127574869511858185390650271135273370525001419684124223184);
        
        vm.roll(22178);
        vm.warp(42417);
        vm.prank(0x0000000000000000000000000000000000030000);
        invariant_receiver_balance_not_less_initial();
    }

    // forge test --match-test test_invariant_receiver_balance_not_zero_1 -vv 
    function test_invariant_receiver_balance_not_zero_1() public {
    
        vm.roll(28902);
        vm.warp(597395);
        vm.prank(0x0000000000000000000000000000000000020000);
        hanlder_receiverFlashLoan(5337475855515933046872637816135476419391557310580447822761378753204140);
        
        vm.roll(74451);
        vm.warp(1119320);
        vm.prank(0x0000000000000000000000000000000000010000);
        hanlder_receiverFlashLoan(441711766194596082395824603835681543907396412773001437512304427505707192);
        
        vm.roll(78469);
        vm.warp(1161481);
        vm.prank(0x0000000000000000000000000000000000020000);
        hanlder_receiverFlashLoan(67961771925946343135207858735011879889408333201405028418295406444139455);
        
        vm.roll(102126);
        vm.warp(1754212);
        vm.prank(0x0000000000000000000000000000000000030000);
        hanlder_receiverFlashLoan(7067388259113537318333190000651295409692841652851801655225685370746503725);
        
        vm.roll(145463);
        vm.warp(2091125);
        vm.prank(0x0000000000000000000000000000000000020000);
        hanlder_receiverFlashLoan(28269579996400816423972554678901889917918379614472095518676857124199845590);
        
        vm.roll(171704);
        vm.warp(2451578);
        vm.prank(0x0000000000000000000000000000000000020000);
        hanlder_receiverFlashLoan(7237005577332262213973186563014357708647441738006350087140606081910479058993);
        
        vm.roll(177407);
        vm.warp(2978397);
        vm.prank(0x0000000000000000000000000000000000030000);
        hanlder_receiverFlashLoan(4936261853620316514782046482032988321542388064486635303723035905040258465);
        
        vm.roll(177502);
        vm.warp(2978652);
        vm.prank(0x0000000000000000000000000000000000030000);
        hanlder_receiverFlashLoan(14136501954813772277613238694908917382982983952247994261611640240450171601);
        
        vm.roll(178642);
        vm.warp(2979808);
        vm.prank(0x0000000000000000000000000000000000020000);
        hanlder_receiverFlashLoan(1062322890502865757934639281327355579633576515916099041932677553971832134);
        
        vm.roll(200312);
        vm.warp(3150258);
        vm.prank(0x0000000000000000000000000000000000020000);
        hanlder_receiverFlashLoan(3618502788666131106986593281520961919998467497441631214535302255464409144820);
        
        vm.roll(244610);
        vm.warp(3242190);
        vm.prank(0x0000000000000000000000000000000000020000);
        invariant_receiver_balance_not_zero();
    }
            
		
            
}
