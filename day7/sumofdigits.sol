// SPDX-License-Identifier: aIT
pragma solidity >=0.5.0 <0.9.0;

contract day1 {
    function digitSum(int256 n) public pure returns(int256){
    int256 sum = 0;
    int256 s;
    while(n>0){
        s = n % 10;
        sum += s;
        n = n / 10;    
    }
    return sum;
    }
}
