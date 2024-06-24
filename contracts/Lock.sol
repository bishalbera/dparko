// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.24;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract Parko {
   
   struct ParkingSpotForRent {
    address id;
    string name;
    string addr;
    bool isSpotAvailable;
    uint256 pricePerHour;
    uint256 lat;
    uint256 long;
   }

   ParkingSpotForRent[] public spotForRent;

   
}
