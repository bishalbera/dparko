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

   event SpotForRentAdded(
        address indexed id,
        string name,
        string addr,
        bool isSpotAvailable,
        uint256 pricePerHour,
        uint256 lat,
        uint256 long
    );

    function giveRent(
        string memory _name,
        string memory _addr,
        bool _isSpotAvailable,
        uint256 _pricePerHour,
        uint256 _lat,
        uint256 _long
    ) public {

        require(bytes(_addr).length > 0, "Address cannot be empty.");
        require(_pricePerHour > 0, "Price per hour must be greater than zero.");

        ParkingSpotForRent memory newSpot = ParkingSpotForRent({
            id: msg.sender,
            name: _name,
            addr: _addr,
            isSpotAvailable: _isSpotAvailable,
            pricePerHour: _pricePerHour,
            lat: _lat,
            long: _long
        });

        spotForRent.push(newSpot);

        emit SpotForRentAdded(
            msg.sender,
            _name,
            _addr,
            _isSpotAvailable,
            _pricePerHour,
            _lat,
            _long
        );
    }


   function getRentList() public view returns (ParkingSpotForRent[] memory) {
    return spotForRent;
   }

   struct Booking {
    address bookerId;
    string bookerName;
    string addr;
    string vehicleName; 
    string date;
    string bookingTime;
    uint256 lat;
    uint256 long;
    uint256 pricePerHour;
   }

   Booking[] public bookingList;

   event SpotBooked(
        address indexed bookerId,
        string bookerName,
        string addr,
        string vehicleName,
        string date,
        string bookingTime,
        uint256 lat,
        uint256 long,
        uint256 pricePerHour
    );

    function bookSpot(
        address _bookerId,
        string memory _bookerName,
        string memory _addr,
        string memory _vehicleName,
        string memory _date,
        string memory _bookingTime,
        uint256 _lat,
        uint256 _long,
        uint256 _pricePerHour
    ) public {
        require(_bookerId != address(0), "Booker ID cannot be the zero address.");
        require(bytes(_bookerName).length > 0, "Booker name cannot be empty.");

        Booking memory newBooking = Booking({
            bookerId: _bookerId,
            bookerName: _bookerName,
            addr: _addr,
            vehicleName: _vehicleName,
            date: _date,
            bookingTime: _bookingTime,
            lat: _lat,
            long: _long,
            pricePerHour: _pricePerHour
        });

        bookingList.push(newBooking);

        emit SpotBooked(
            _bookerId,
            _bookerName,
            _addr,
            _vehicleName,
            _date,
            _bookingTime,
            _lat,
            _long,
            _pricePerHour
        );
    }

    function getBookingList() public view returns (Booking[] memory) {
        return bookingList;
    }



}
