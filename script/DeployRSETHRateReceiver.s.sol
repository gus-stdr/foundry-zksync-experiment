// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";

import {RSETHRateReceiver} from "src/RSETHRateReceiver.sol";

/// @notice Deploys RSETHRateReceiver; Receiver rate for rsETH on child chain
contract DeployRSETHRateReceiver is Script {
    function run() external {
        vm.startBroadcast();

        address rateProviderOnEthMainnet = 0x0788906B19bA8f8d0e8a7015f0714DF3179D9aB6;
        uint16 layerZeroSrcChainId = 101; // Layer Zero id for Ethereum mainnet

        // Layer Zero v1 endpoint for ZkSync
        address childChainLayerZeroEndpoint = 0x9b896c0e23220469C7AE69cb4BbAE391eAa4C8da;

        address rsETHRateReceiverContractAddress =
            address(new RSETHRateReceiver(layerZeroSrcChainId, rateProviderOnEthMainnet, childChainLayerZeroEndpoint));

        console.log("RSETHRateReceiver deployed at: %s", address(rsETHRateReceiverContractAddress));

        vm.stopBroadcast();
    }
}
