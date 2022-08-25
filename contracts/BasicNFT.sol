/*-------------------- Pragmas -----------------------*/
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

/*-------------------- Imports -----------------------*/
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

/*-------------------- Interfaces --------------------*/

/*-------------------- Libraries ---------------------*/

/*-------------------- Errors ------------------------*/

/*-------------------- Contracts ---------------------*/
contract BasicNFT is ERC721 {
    /*-------------------- Type Declarations ---------------------*/

    /*-------------------- State Varibles ------------------------*/
    string public constant TOKEN_URI =
        "ipfs://bafybeibiztri6debosoxdv2un2pgbx7qjurbay3b6nejzbd6syhqzlalem/?filename=0-IWasHere.json";
    uint256 private s_tokenCounter = 0;

    /*-------------------- Events --------------------------------*/

    /*-------------------- Modifiers -----------------------------*/

    /*-------------------- constructor function -----------------------------*/
    constructor() ERC721("IWasHere", "IWH") {}

    /*-------------------- receive function ---------------------------------*/

    /*-------------------- fallback function --------------------------------*/

    /*-------------------- external functions -------------------------------*/

    /*-------------------- public functions ---------------------------------*/
    function mintNFT() public returns (uint256) {
        _safeMint(msg.sender, s_tokenCounter);
        s_tokenCounter = s_tokenCounter + 1;
        return s_tokenCounter;
    }

    /*-------------------- internal functions -------------------------------*/

    /*-------------------- private functions --------------------------------*/

    /*-------------------- view / pure functions ----------------------------*/
    function tokenURI(
        uint256 /*tokenId*/
    ) public pure override returns (string memory) {
        // require(_exist(tokenId))
        return TOKEN_URI;
    }

    function getTokenCounter() public view returns (uint256) {
        return s_tokenCounter;
    }
}
