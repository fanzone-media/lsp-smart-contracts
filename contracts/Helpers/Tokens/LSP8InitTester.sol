// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../../LSP8IdentifiableDigitalAsset/LSP8IdentifiableDigitalAssetInit.sol";

contract LSP8InitTester is LSP8IdentifiableDigitalAssetInit {
    function initialize(
        string memory name,
        string memory symbol,
        address newOwner
    ) public override initializer {
        LSP8IdentifiableDigitalAssetInit.initialize(name, symbol, newOwner);
    }

    function mint(
        address to,
        bytes32 tokenId,
        bool force,
        bytes memory data
    ) public {
        _mint(to, tokenId, force, data);
    }

    function burn(bytes32 tokenId, bytes memory data) public {
        _burn(tokenId, data);
    }
}
