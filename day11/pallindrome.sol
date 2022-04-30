// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
   function palindrome(uint n) public pure returns(uint){
   uint f; 
   uint r;
   uint num = n;
   while(num != 0){
    f = num % 10;
    r = r*10 + f;
    num = num/10;
   }

   if(n==r){
    return 1;
   }
   else{
   return 0;
   }
   }
}
