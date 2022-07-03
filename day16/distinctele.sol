// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    function distinct(uint256[] memory arr, uint256 len)
        public
        pure
        returns (uint256)
    {
        uint256 count;
        uint256 i;
        uint256 j;
        for (i = 0; i < len; i++) {
            for (j = i + 1; j < len; j++) {
                if (arr[i] == arr[j]) {
                    break;
                }
            }
            if (j == len) {
                count++;
            }
        }
        return count;
    }
}
