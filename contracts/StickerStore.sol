pragma solidity ^0.5.2;

contract StickerStore {

  address[] public stickerList;

  // event RoomCreated(
  //   address indexed _creator,
  //   Room _room,
  //   uint _depositedValue
  // );
  //
  // function createRoom(string memory _theme) public payable {
  //   Room newRoom = (new Room).value(msg.value)(msg.sender, _theme);
  //   roomList.push(newRoom.getAddress());
  //   emit RoomCreated(msg.sender, newRoom, msg.value);
  // }

  function getAllStickerList() public view returns (address[] memory) {
    return stickerList;
  }
}
