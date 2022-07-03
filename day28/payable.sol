pragma solidity >=0.5.0 <0.9.0;

contract pay {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    modifier adminOnly() {
        require(msg.sender == owner);
        _;
    }

    // payable function modifier enables the function to recieve and send ether transacs

    function send(address payable[] memory to, uint256[] memory amt)
        public
        payable
        adminOnly
    {
        // checking whether the address array has the same length as the amt array so that proper distribution of transacs can be made
        require(
            to.length == amt.length,
            "both the arrays should be of same length"
        );
        for (uint256 i = 0; i < to.length; i++) {
            to[i].transfer(amt[i]);
        }
    }
}
