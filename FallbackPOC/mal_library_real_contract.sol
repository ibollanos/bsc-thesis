// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;
contract UsefulLib{
    struct NUM{
        uint256 num;
    }

    NUM public n;
    function help(NUM memory x) external returns (bool){
        n.num = 100;

        return true;
    }

    function killme() public {
        selfdestruct(payable(0));
    }

    // /*
    //     @notice: * fallback with arguements version
    //              * arguement behavior is the same as reading msg.data

    // */
    // fallback(bytes calldata _input) external payable returns (bytes memory _output){
    //     //return size should match -- abi.encode pads to 32 bytes
    //     _output = abi.encode("AAA");
    //     n.num = 404;

    // }

    fallback() external payable{
        //return size should match!
        n.num = 404;

        //simluate return for the fallback with no arguements
        assembly{
            return(0,32)
        }
    }
}

