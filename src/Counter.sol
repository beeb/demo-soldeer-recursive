// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {IV4Router} from "v4-periphery/src/interfaces/IV4Router.sol";

contract Counter {
    uint256 public number;
    IV4Router internal immutable _router;

    constructor() {
        _router = IV4Router(address(0));
    }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function routerInteraction() external pure {
        revert IV4Router.V4TooLittleReceived(0, 0);
    }
}
