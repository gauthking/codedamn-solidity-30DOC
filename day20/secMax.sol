// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
    function secondMax(int256[] memory arr, uint256 len)
        public
        pure
        returns (int256)
    {
        int256 max1 = 0;
        int256 max2 = 0;
        for (uint256 i = 0; i < len; i++) {
            if (arr[i] > max1) {
                max1 = arr[i];
            }
        }
        for (uint256 j = 0; j < len; j++) {
            if (arr[j] > max2 && arr[j] < max1) {
                max2 = arr[j];
            }
        }

        return max2;
    }
}
