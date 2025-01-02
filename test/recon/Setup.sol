
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";

import "src";

abstract contract Setup is BaseSetup {

    FlashLoanReceiver flashLoanReceiver;
    NaiveReceiverLenderPool naiveReceiverLenderPool;

    function setup() internal virtual override {
      flashLoanReceiver = new FlashLoanReceiver(); // TODO: Add parameters here
      naiveReceiverLenderPool = new NaiveReceiverLenderPool(); // TODO: Add parameters here

    }
}
