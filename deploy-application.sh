#!/bin/bash
npm install
truffle version
truffle compile
truffle deploy --network ropsten
read -p "Press enter to close window ..."