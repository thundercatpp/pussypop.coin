module.exports = function (deployer, network, accounts) {
  ["Address", "SafeMath", "PussyPopDeFi"].forEach(tokenName => {
    const token = artifacts.require(tokenName);
    deployer.deploy(token);
  });
}
