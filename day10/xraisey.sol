// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    function power(uint x, uint y) public pure returns(uint){
        uint val = 1;
        for(uint i = 0; i<y; i++){
            val = val * x;
        }

        return val;
    }
}
-