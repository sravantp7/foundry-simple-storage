// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";

contract SimpleStorageTest is Test {
    SimpleStorage simpleStorage;

    function setUp() external {
        simpleStorage = new SimpleStorage();
    }

    function test_InitialValueIsZero() external {
        assertEq(simpleStorage.retrieve(), 0);
    }

    function test_UpdateTheFavNumber(uint256 _favNum) external {
        simpleStorage.store(_favNum);
        assertEq(simpleStorage.retrieve(), _favNum);
    }
}