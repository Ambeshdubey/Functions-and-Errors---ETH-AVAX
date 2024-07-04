// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevert {
    uint256 public value;
    uint256 public counter;

    constructor(uint256 initialValue) {
        require(initialValue >= 0, "Initial value must be non-negative");
        value = initialValue;
        counter = 0;
    }

    function setValue(uint256 newValue) public {
        require(newValue >= 0, "Value must be non-negative");
        value = newValue;
    }

    function incrementCounter() public {
        counter++;
        // Assert that the counter never overflows (for demonstration purposes)
        assert(counter > 0);
    }

    function doRevert(uint256 newValue) public {
        if (newValue < 0) {
            revert("Value cannot be negative");
        }
        value = newValue;
    }

    function triggerAssertion() public view {
        // This assertion will always fail for demonstration purposes
        assert(counter == 999999999);
    }
}
