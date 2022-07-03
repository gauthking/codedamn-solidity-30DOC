// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
    function hcf(uint256 num1, uint256 num2) public pure returns (uint256) {
        if (num1 == 0) {
            return num1;
        }

        if (num2 == 0) {
            return num2;
        }

        if (num1 == num2) {
            return num1;
        }

        if (num1 > num2) {
            return hcf(num1 - num2, num2);
        }
        return hcf(num1, num2 - num1);
    }
}
