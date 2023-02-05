const ColorToken = artifacts.require("ColorToken");
const ProofCTK = artifacts.require("ProofCTK");

contract("Contract Test", (accounts) => {
  it("Let users stake", async () => {
    const pCtk = await ProofCTK.deployed();
    const ctk = await ColorToken.deployed();
    await ctk.grantRole(web3.utils.sha3("MINTERROLE")!, pCtk.address);
    await ctk.grantRole(web3.utils.sha3("BURNERROLE")!, pCtk.address);
    await pCtk.stake(100, { from: accounts[0] });
    const ctkTotalSupply = await ctk.totalSupply();
    console.log({ TotalSupplyCTK: Number(ctkTotalSupply) });
    assert(Number(ctkTotalSupply) === 99900, "Stake fail: total supply should be 99000");
  });
});
