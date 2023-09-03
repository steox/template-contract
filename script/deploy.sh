#!/usr/bin/env bash

if [ -f .env ]
then
  export $(cat .env | xargs) 
else
    echo "Please set your .env file"
    exit 1
fi

sample=1

forge create --rpc-url ${GOERLI_RPC_URL} \
    --constructor-args $sample \
    --private-key ${PRIVATE_KEY} \
    --etherscan-api-key ${ETHERSCAN_API_KEY} \
    --verify \
    src/Sample.sol:Sample