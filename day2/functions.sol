// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Function{
    uint var1 = 10;
    function returnStateVariable() public view returns(uint){
        return var1;
    }
    function returnLocalVariable() public view returns(uint){
        uint var2 = 20;
        return var2;
    }
}
