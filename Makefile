# include .env file and export its env vars
# (-include to ignore error if it does not exist)
# Note that any unset variables here will wipe the variables if they are set in
# .zshrc or .bashrc. Make sure that the variables are set in .env, especially if
# you're running into issues with fork tests
-include .env


deploy-rseth-rate-receiver-zksync :; forge script script/DeployRSETHRateReceiver.s.sol:DeployRSETHRateReceiver --rpc-url ${ZKSYNC_RPC_URL}  --private-key ${DEPLOYER_PRIVATE_KEY} --broadcast -vvv --zksync