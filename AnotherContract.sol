// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;
//another contract, also implementing the ERC20 contract
contract ERC20{
    string public name;
    mapping(address => uint256) public balances;

    function mint() public{
        balances[tx.origin] ++;
    }
}


contract SimpleContract {

    //address that will receive the money sent by the sender
    address payable wallet;
    address public token;

    //this is for initialization of the wallet, without the payable option, no money would ever kinda get transfered
    constructor (address payable _wallet, address _token) {
        wallet = _wallet;
        token = _token;
    }
    // very very imp stuff
    fallback()  external payable {
        buyToken();
    }
    function buyToken() public payable {
        // buy a token
        //we are issuing the token while we get paid
        //send ether to the wallet to the wallet
        ERC20(address(token)).mint();
        wallet.transfer(msg.value);

    }
}
