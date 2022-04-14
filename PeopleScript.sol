// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

//just a basic script to keep a database of people's names and the total number of people
contract PeopleScript {
    uint256 public peopleCount=0;
    //this is like a dictionary or something, kinda better than an array I think...
    mapping(uint => Person) public people;

    // There comes to use my C knowledge!
    //This is the basic data structure to store details of my people list
    struct Person {
        uint _id;
        string _firstName;
        string _lastName;
    }

    function addPerson(string memory _firstName, string memory _lastName) public {
        //using an internal function, just to ramp up the code complexity!
        incrementCount();
        people[peopleCount] = Person(15862+peopleCount, _firstName,_lastName);
    }
    //an internal function that no one other than who has access to the code can play around with
    function incrementCount() internal {
        peopleCount += 1;
    }
}
