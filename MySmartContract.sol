// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MySmartContract {
    uint256 public value;

    constructor(uint256 initialValue) {
        require(initialValue >= 0, "Initial value must be non-negative");
        value = initialValue;
    }

    function setValue(uint256 newValue) public {
        require(newValue >= 0, "Value must be non-negative");
        value = newValue;
    }

    function doRevert(uint256 newValue) public {
        if (newValue < 0) {
            revert("Value cannot be negative");
        }
        value = newValue;
    }
}
