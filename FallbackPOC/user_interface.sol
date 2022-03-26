// SPDX-License-Identifier: MIT
pragma solidity ^0.8;
import "./mal_library.sol";

contract UserInterface{
    UsefulLib.NUM public n;

    constructor(uint _num){
        n.num = _num;
    }

    function getHelp() public{
        UsefulLib.help(n);
    }

    function getHelp2() public{
        UsefulLib.help2();
    }
}