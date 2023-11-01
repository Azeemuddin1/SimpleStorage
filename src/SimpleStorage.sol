//SPDX-License-Identifier:MIT

pragma solidity ^0.8.19;

contract SimpleStorage {
    uint256 myFavoriteNumber;

  struct Person {
    uint256  faviriteNumber;
    string name;
  }

Person[] private listOfPeople;

mapping (string name=>uint256 number) private nameToFavoriteNumber;

function store( uint256 _favoriteNumber) public {
    myFavoriteNumber = _favoriteNumber;
}

function retrieve() public view returns(uint256){
    return myFavoriteNumber;
}

function addPerson(string memory _name , uint256 _favoriteNumber ) public {
    listOfPeople.push(Person(_favoriteNumber, _name));
    nameToFavoriteNumber[_name] = _favoriteNumber;

}

function getNametoFavNum( string memory _name) external view returns(uint256) {
    return nameToFavoriteNumber[_name];
}



}