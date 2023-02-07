require("@nomiclabs/hardhat-waffle");

module.exports = {
  solidity: "0.8.0",
  networks:{
    goerli:{
      url:"https://eth-goerli.g.alchemy.com/v2/RSOVuJ8Ec6fPXdA2kT_XMrOwzvbBxeq7",
      accounts:['66633a636f87d9bab54db0e71ec3fe8130ca6eb91e62e6d7826b379457e503c7']
    }
  }
};
