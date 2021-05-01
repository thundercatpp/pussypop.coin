#!/bin/bash
npm install
node ./create-env.js
truffle version
truffle compile
truffle deploy --network ropsten
read -p "Press enter to close window ..."