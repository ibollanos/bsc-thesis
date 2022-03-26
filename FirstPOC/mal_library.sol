// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
library UsefulLib{
    struct NUM{
        uint256 num;
    }
    function help(NUM storage n) public view returns (uint){
        return n.num + 1;
    }
}