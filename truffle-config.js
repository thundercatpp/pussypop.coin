require('dotenv').config()
const HDWalletProvider = require('@truffle/hdwallet-provider')

module.exports = {
  networks: {
    ropsten: {
      provider: () => new HDWalletProvider({mnemonic: {phrase: process.env.MNEMONIC},
         providerOrUrl: process.env.ROPSTEN_URL, chainId: 3}),
      network_id: 3,
      gas: 8000000,
      confirmations: 1,
      skipDryRun: true
      },

    bsc: {
      provider: () => new HDWalletProvider({mnemonic: {phrase: process.env.MNEMONIC},
        providerOrUrl: process.env.BSC_URL}),
      network_id: 56, 
      gas: 8000000,
      confirmations: 9,
      skipDryRun: true
    },  
  },

  mocha: {
  },

  compilers: {
    solc: {
      version: "0.8.1",    // Fetch exact version from solc-bin (default: truffle's version)
   
    }
  },

  db: {
    enabled: false
  }
};