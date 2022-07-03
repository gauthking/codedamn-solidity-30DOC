// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
    function search(
        int256[] memory arr,
        uint256 len,
        int256 s
    ) public pure returns (uint256) {
        for (uint256 i = 0; i < len; i++) {
            if (arr[i] == s) {
                return 1;
            }
        }
        return 0;
    }
}
