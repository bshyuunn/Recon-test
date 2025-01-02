
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {Properties} from "./Properties.sol";
import {vm} from "@chimera/Hevm.sol";

abstract contract TargetFunctions is BaseTargetFunctions, Properties {

    function flashLoanReceiver_receiveEther(uint256 fee) public {
        flashLoanReceiver.receiveEther(fee);
    }

    function naiveReceiverLenderPool_flashLoan(address borrower, uint256 borrowAmount) public {
        naiveReceiverLenderPool.flashLoan(borrower, borrowAmount);
    }
}
