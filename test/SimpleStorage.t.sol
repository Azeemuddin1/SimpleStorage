//SPDX-License-Identifer:MIT

pragma solidity ^0.8.19;

import {Test} from "forge-std/Test.sol";
import {SimpleStorage} from "../src/SimpleStorage.sol";
import { DeploySimpleStorage } from "../script/SimpleStorage.s.sol";


contract SimpleStorageTest is Test, SimpleStorage{

    DeploySimpleStorage deployer;
    SimpleStorage simpleStorage;


    function setUp() external {
        deployer = new DeploySimpleStorage();
        simpleStorage = deployer.run();
    }

    function testStoreNumber() public {
        uint256 expectedFavoriteNumber =777;
        simpleStorage.store(expectedFavoriteNumber);
        assert(expectedFavoriteNumber == simpleStorage.retrieve());
    }

    function testFavnumber() public {
       
    string memory ExpectedName = "Azeem";
    uint256 ExpectedFavNumber = 123;

    simpleStorage.addPerson(ExpectedName, ExpectedFavNumber);
      uint256 returnNumber = simpleStorage.getNametoFavNum(ExpectedName);
      assertEq(ExpectedFavNumber, returnNumber);
    }
 }

