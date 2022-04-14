// SPDX-License-Identifier: MIT
//Basic Synatax stuff
pragma solidity 0.8.7;

contract MyContract {
    string value;
    //another way of instantiation that allows code to be accessed without any function
    uint256 public Stuff = 179;

    //the main constructor for the contract, just like in python and other OOPs
    constructor() public {
        value = "Hallo Leute!";
    }

    //basic function to get the value of the string
    function get() public view returns(string memory){
        return value;
    }
    //another basic function to set the value of the string
    function set(string memory NewValue) public {
        value = NewValue;
    }
}
