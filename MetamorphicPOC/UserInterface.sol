// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;
import "./honestLibrary.sol";

contract UserInterface{
    using SafeCheckLibrary for address[];

    address[] public wallets;
    mapping(address => uint256) public walletBalance;

    constructor() payable {}

    function depositEth(address _wallet) public payable{
        walletBalance[_wallet] += msg.value;
    }

    function addWallet(address _addr) public{
        require(!wallets.WalletCollectionContains(_addr),"Wallet already included");
        wallets.push(_addr);
    }

    //...
}