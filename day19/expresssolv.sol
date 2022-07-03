// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
    function expression(uint256 x, uint256 n) public pure returns (uint256) {
        uint256 sum;
        uint256 f;
        uint256 s = 1;
        for (uint256 i = 0; i < n; i++) {
            s = x * s;
            sum += s;
        }
        f = sum + 1;
        return f;
    }
}
