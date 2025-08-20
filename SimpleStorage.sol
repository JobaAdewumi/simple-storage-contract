// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage {
    uint256 public favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    function changeNumber(uint256 _newNumber) public {
        favoriteNumber = _newNumber;
    }

   

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function retreive() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}
    // 0xd9145CCE52D386f254917e481eB44e9943F39138