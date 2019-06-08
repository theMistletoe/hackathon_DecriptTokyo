pragma solidity ^0.5.1;

contract Sticker{

   struct stickerinfo{
       address owner;
       string name;
       address[] stickerOwners;
       string description;
       string image;
   }



   stickerinfo public stickers;

   constructor(string memory _name,string memory _description,
   string memory _image)public{
       stickers.owner=msg.sender;
       stickers.name=_name;
       stickers.description=_description;
       stickers.image=_image;
   }

   function add(address sender)public{
       stickers.stickerOwners.push(sender);
   }

   function getStickerHolders() public view returns (address[] memory) {
       return stickers.stickerOwners;
   }

   function getOwner() public view returns (address) {
       return stickers.owner;
   }

   function getName() public view returns (string memory) {
       return stickers.name;
   }

   function getDescription() public view returns (string memory) {
       return stickers.description;
   }

   function getImage() public view returns (string memory) {
       return stickers.image;
   }


}
