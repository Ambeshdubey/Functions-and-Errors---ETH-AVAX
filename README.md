# Functions-and-Errors---ETH-AVAX
# MySmartContract

## Overview
This project demonstrates the use of `require()`, `assert()`, and `revert()` statements in a smart contract. 

## Smart Contract
The smart contract is written in Solidity and contains three functions:
- `setValue(uint newValue)`: Sets the value after ensuring it is non-negative.
- `doRevert(uint newValue)`: Sets the value unless it is negative, in which case it reverts.
- Constructor: Initializes the contract with a positive value and uses `assert` to check the condition.

## Deployment
The contract can be deployed using Remix IDE.

## Usage
After deployment, interact with the contract using the functions provided to set and check values.


## License
This project is licensed under the MIT License.
