// you can use this plugin in order to build smart contract tests
require("@nomiclabs/hardhat-waffle");

//
module.exports = {
  solidity: "0.8.0",
  networks: {
    ropsten: {
      url: "https://eth-ropsten.alchemyapi.io/v2/FqNXm400oEl7zc1s9t5GzawsPzKvuxDZ",
      accounts: [
        "7517ad514e29f6a7de8e13a0046747eace1ddb81fd63aa17b5cb069a7afc8d4f",
      ],
    },
  },
};
