// SPDX-License-Identifier: MIT
// 0.8.7+commit.e28d00a7

pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract ContractMetadataGenerator is Ownable {
    string public metadata;

    constructor(string memory _metadata) {
        metadata = _metadata;
    }

    function setMetadata(string calldata _metadata) public onlyOwner {
        metadata = _metadata;
    }

    function generateContractMetadata() external view returns (string memory) {
        return metadata;
    } 
}
