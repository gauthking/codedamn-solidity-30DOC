// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
    function sort(int256[] memory arr, uint256 len)
        public
        pure
        returns (int256[] memory)
    {
        int256 temp;
        for (uint256 i = 0; i < len; ++i) {
            for (uint256 j = i + 1; j < len; ++j) {
                if (arr[i] > arr[j]) {
                    temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }

        return arr;
    }
}
