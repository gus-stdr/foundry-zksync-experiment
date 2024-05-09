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
$ forge script script/DeployRSETHRateReceiver.s.sol:DeployRSETHRateReceiver --rpc-url <your_rpc_url> --private-key <your_private_key> --zksync
```

### Help

```shell
$ forge --help
```

## Deployed Contracts

### ZKSync

| Contract Name     | Proxy Address                              |
| ----------------- | ------------------------------------------ |
| RSETHRateReceiver | 0x6C2e862E7d03e1C9dDa1b30De69b201c7c52e3dB |
