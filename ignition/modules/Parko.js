const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");

module.exports = buildModule("ParkoModule", (m) => {

  const parko = m.contract("Parko");

  return { parko };
});