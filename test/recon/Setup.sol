
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseSetup} from "@chimera/BaseSetup.sol";

import {FlashLoanReceiver} from "src/FlashLoanReceiver.sol";
import {NaiveReceiverLenderPool} from "src/NaiveReceiverLenderPool.sol";

abstract contract Setup is BaseSetup {

    FlashLoanReceiver flashLoanReceiver;
    NaiveReceiverLenderPool naiveReceiverLenderPool;

    uint256 constant INIT_ETH_POOL     = 1000e18;
    uint256 constant INIT_ETH_RECEIVER = 10e18;

    function setup() internal virtual override {

      naiveReceiverLenderPool = new NaiveReceiverLenderPool();
      flashLoanReceiver = new FlashLoanReceiver(payable(address(naiveReceiverLenderPool)));

      payable(address(naiveReceiverLenderPool)).transfer(INIT_ETH_POOL);
      payable(address(flashLoanReceiver)).transfer(INIT_ETH_RECEIVER);

    }
}
