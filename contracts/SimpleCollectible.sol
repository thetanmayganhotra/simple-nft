// SPDX-License-Identifier: MIT OR Apache-2.0
pragma solidity ^0.8.3;

import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import "hardhat/console.sol";


contract simplecollectible is ERC721URIStorage {

    uint256 public tokencounter;

    constructor() public ERC721("Dogie","DOG"){
        tokencounter = 0;
    }

     function createcollectible(string memory tokenURI) public returns(uint256)
     {
         uint256 newitemid = tokencounter;
         _safeMint(msg.sender, newitemid);
         _setTokenURI( newitemid,tokenURI);
         tokencounter += 1;
         return newitemid;


     }
}

