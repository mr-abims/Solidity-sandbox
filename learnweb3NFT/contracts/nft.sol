//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
// import standard implementato for ERC721
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
// contract NFtee is an ERC721 contract
 contract NFtee is ERC721 {
    //  create an ERC 721 contract 
     constructor() ERC721("Abims", "abimsnft"){
         _mint(msg.sender, 1);
         _mint(msg.sender, 2);
         _mint(msg.sender, 3);
         _mint(msg.sender, 4);
         _mint(msg.sender, 5);
         
    }   
    
 } 