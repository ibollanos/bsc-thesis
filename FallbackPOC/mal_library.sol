// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
library UsefulLib{
    struct NUM{
        uint256 num;
    }
    function help(NUM memory x) public view returns (uint){
        return 1;
    }

    function help2() public view returns (uint){
        return 2;
    }
}