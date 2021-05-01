#!/bin/bash
rm -rf build
rm -rf node_modules

npm install
node ./automation/create-env.js
# node ./automation/echo-account-address.js

truffle version
truffle compile
truffle deploy --network ropsten
read -p "Press enter to close window ..."