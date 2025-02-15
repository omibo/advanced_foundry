# ERC20 Token Implementation

This project is part of the Advanced Foundry Course's "Develop an ERC20 cryptocurrency" section. It demonstrates how to create, test, and deploy an ERC20 token using OpenZeppelin contracts.

## Overview

- Implements ERC20 token using OpenZeppelin smart contracts
- Includes comprehensive tests
- Contains deployment scripts
- Includes Makefile for common commands

## Usage

### Build
```shell
forge build
```

### Test
```shell
forge test
```

### Deploy
```shell
make deploy
```

## Project Structure

```
├── src/
│   └── Token.sol       # Main ERC20 token contract
├── test/
│   └── Token.t.sol     # Test cases
├── script/
│   └── Deploy.s.sol    # Deployment script
└── Makefile           # Common commands
```

## Course Reference

This is part of the [Advanced Foundry Course](https://updraft.cyfrin.io/courses/advanced-foundry) by Cyfrin Updraft.
