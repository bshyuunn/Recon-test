
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";

import {FlashLoanReceiver} from "src/FlashLoanReceiver.sol";
import {NaiveReceiverLenderPool} from "src/NaiveReceiverLenderPool.sol";

abstract contract Setup is BaseSetup {

    FlashLoanReceiver flashLoanReceiver;
    NaiveReceiverLenderPool naiveReceiverLenderPool;

    function setup() internal virtual override {
      naiveReceiverLenderPool = new NaiveReceiverLenderPool();
      flashLoanReceiver = new FlashLoanReceiver(payable(address(naiveReceiverLenderPool)));

    }
}
