const StickerStoreContract = artifacts.require('StickerStore.sol');

module.exports = function(deployer) {
  // Use deployer to state migration tasks.
  deployer.deploy(StickerStoreContract);
};
