
// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {Asserts} from "@chimera/Asserts.sol";
import {BeforeAfter} from "./BeforeAfter.sol";

abstract contract Properties is BeforeAfter, Asserts {
    function invariant_receiver_balance_not_zero() public {
        t(address(flashLoanReceiver).balance != 0, "invariant_receiver_balance_not_zero");
    }
 
    function invariant_receiver_balance_not_less_initial() public {
       t(address(flashLoanReceiver).balance >= INIT_ETH_RECEIVER, "invariant_receiver_balance_not_less_initial");
    }
}
