// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 < 0.9.0;

contract FunctionArgument{
    uint var1;
    
    function set(uint _val) public{
        var1 = _val;
    }

    function get() public view returns (uint){
        return var1;
    }

}
