## Kelp ZkSync Set up

This repo contains the smart contracts for the Kelp ZkSync integration.

Ensure the installation from [https://docs.zksync.io/build/tooling/foundry/getting-started.html](https://docs.zksync.io/build/tooling/foundry/getting-started.html) is complete.

A changed version of Foundry must be installed to work with the zkSync compiler.

## Usage

### Build

```shell
$ forge build --zksync
```

### Test

```shell
$ forge test --zksync
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key> --zksync
```

### Help

```shell
$ forge --help
```
