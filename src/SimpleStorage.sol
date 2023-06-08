// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 private favNumber;

    function store(uint256 _favNumber) public {
        favNumber = _favNumber;
    }

    function retrieve() public view returns (uint256) {
        return favNumber;
    }
}
