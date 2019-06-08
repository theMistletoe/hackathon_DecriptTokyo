pragma solidity ^0.5.2;

import "./Sticker.sol";

contract StickerStore {

  address[] public stickerList;

  function createSticker(
      string memory _name,
      string memory _description,
      string memory _image
 ) public {
    Sticker newSticker  = new Sticker(_name, _description, _image);
    stickerList.push(newSticker.getAddress());
  }

  function addAddressToStickerList(address _stickerAddress) public {
      stickerList.push(_stickerAddress);
  }

  function getAllStickerList() public view returns (address[] memory) {
    return stickerList;
  }
}
