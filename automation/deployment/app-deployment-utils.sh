#!/bin/bash
function deploy() {
    echo "Cleaning up work space"
    rm -rf build
    rm -rf node_modules

    echo "Building work space"
    npm install
    node ./automation/create-env.js
    # node ./automation/echo-account-address.js
    # echo "Fetch Account Address and Populate Liquidity Pool; Send Ether."
    # read -p "Press enter to continue to smart contract build & deployment."


    echo "Building smart contract."
    truffle version
    truffle compile

    echo "Deploying smart contract."
    truffle deploy --network bsc
}


logDirectory="./_logs/"
mkdir -p $logDirectory 
logFile="$logDirectory$(date +"%Y_%m_%d_%I_%M_%p").log"
echo $logFile

deploy > $logFile
read -p "Press enter to close window ..."