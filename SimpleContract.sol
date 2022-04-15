// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

contract SimpleContract {

    //address that will receive the money sent by the sender
    address payable wallet;
    mapping(address => uint256) public balances;

    //this is like a data structure that is for keeping logs. This can be triggered individually, it can be used to keep logs of everything that
    // every happens in the blockchain
    event Purchase(
        address indexed _buyer,
        uint256 _amount
    );
    //this is for initialization of the wallet, without the payable option, no money would ever kinda get transfered
    constructor (address payable _wallet) {
        wallet = _wallet;
    }
    // very very imp stuff
    fallback()  external payable {
        buyToken();
    }
    function buyToken() public payable {
        // buy a token
        //we are issuing the token while we get paid
        //send ether to the wallet to the wallet
        balances[msg.sender] += 1;
        wallet.transfer(msg.value);
        emit Purchase(msg.sender,1);

    }
    //just a simple function i wrote to get back the address of the wallet the money is getting transfered to
    function getwallet() public view returns(address) {
        return wallet;
    }
}
