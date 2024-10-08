// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract Timelock is TimelockController {
    /**
     * - `minDelay`: initial minimum delay in seconds for operations
     * - `proposers`: accounts to be granted proposer and canceller roles
     * - `executors`: accounts to be granted executor role
     *
     */
    constructor(uint256 _minDelay, address[] memory _proposers, address[] memory _executors)
        TimelockController(_minDelay, _proposers, _executors, msg.sender)
    {}
}
