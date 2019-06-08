pragma solidity ^0.5.1;

contract Users{

   struct userinfo{
       string name;
       string Icon;
       address[] holdstickers;
   }

   mapping(address=>userinfo) Userlist;

   function addsticker(address msender,address cont_addr) public{
       Userlist[msender].holdstickers.push(cont_addr);
   }

   function makesample(string memory _name,string memory _Icon, address[] memory _stickers) public{
       Userlist[msg.sender].name=_name;
       Userlist[msg.sender].Icon=_Icon;
       Userlist[msg.sender].holdstickers=_stickers;
   }

   function getName(address sender) public view returns(string memory){
       return Userlist[sender].name;
   }

     function getIcon(address sender) public view returns(string memory){
       return Userlist[sender].Icon;
   }

   function getStickers(address sender)public view returns(address[] memory){
       return Userlist[sender].holdstickers;
   }

}
