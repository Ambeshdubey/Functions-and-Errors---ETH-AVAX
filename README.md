# MySmartContract

## Description
This Solidity smart contract demonstrates the usage of `require()`, `assert()`, and `revert()` statements. The contract allows setting and updating a `value` that must be non-negative. It includes error handling using `revert()` for conditions that should not occur.

## Getting Started
### Executing Program
To deploy and interact with this smart contract, you can use Remix, an online Solidity IDE. Follow these steps:

1. **Open Remix**: Go to [Remix Ethereum](https://remix.ethereum.org/).

2. **Create a New File**: Click on the "+" icon in the left-hand sidebar to create a new file. Save the file with a .sol extension (e.g., `MySmartContract.sol`).

3. **Code**: Write the following Solidity code into the file:

    ```solidity
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
    
        function checkAssertion(uint256 testValue) public pure {
        // This will always be true since uint256 cannot be negative
        assert(testValue >= 0);
        }
    }
    ```

4. **Compile the Code**: Click on the "Solidity Compiler" tab in the left-hand sidebar. Set the "Compiler" option to "0.8.0" (or another compatible version), and click on the "Compile MySmartContract.sol" button.

5. **Deploy the Contract**: Go to the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MySmartContract" contract from the dropdown menu, enter a `uint256` value for `initialValue`, and click on the "Deploy" button.

6. **Interact with the Contract**: After deployment, interact with the contract using the following functions:
   - `setValue(uint256 newValue)`: Sets the `value` to a new non-negative integer.
   - `doRevert(uint256 newValue)`: Sets the `value` only if `newValue` is non-negative; otherwise, reverts with an error message.

## Authors
Ambesh Dubey

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
