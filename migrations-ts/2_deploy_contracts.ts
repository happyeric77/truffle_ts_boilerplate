const ColorToken = artifacts.require("ColorToken");
const ProofCTK = artifacts.require("ProofCTK");

const migration: Truffle.Migration = async function (deployer) {
  await deployer.deploy(ColorToken, "Color Token", "CTK", 100000);
  const ctk = await ColorToken.deployed();
  await deployer.deploy(ProofCTK, "Proof Color Token", "pCTK", ctk.address);
};

module.exports = migration;

// because of https://stackoverflow.com/questions/40900791/cannot-redeclare-block-scoped-variable-in-unrelated-files
export {};
