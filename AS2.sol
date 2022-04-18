// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

//also learnt about the basic "import" like python
//just small code for displaying and using libraries in solidity
library Math {
    function divide(uint256 a, uint256 b) internal pure returns(uint256){
        require(b>0);
        uint256 c = a/b;
        return c;
    }
}

contract MyContract{
    uint256 public value;

    function calculate( uint _value1, uint _value2) public{
        value= Math.divide(_value1,_value2);
    }
}
