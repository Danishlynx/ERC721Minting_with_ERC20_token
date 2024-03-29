// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract MyNftContract is ERC721("MyNftContract", "MNC") {
    using Counters for Counters.Counter;
    Counters.Counter private _ids;
    uint256 public constant MAX_SUPPLY = 10;

    function mint(address to) external {
        require(_ids.current() < MAX_SUPPLY, "Run out of NFTs!");
        _mint(to, _ids.current());
        _ids.increment();
    }

    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        _requireMinted(tokenId);

        string memory baseURI = _baseURI();
        return
            bytes(baseURI).length > 0
                ? string(
                    abi.encodePacked(
                        baseURI,
                        Strings.toString(tokenId),
                        ".json"
                    )
                )
                : "";
    }

    function _baseURI() internal pure override returns (string memory) {
        return
            "ipfs://QmSquBiBsxx2XQeRrDZ8uWtVJrEbYLnbhXd8YkKvctBqFA/";
    }
}
