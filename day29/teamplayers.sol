pragma solidity >=0.5.0 <0.9.0;

contract teamPlayers {
    address[16] players;

    function getTeamPlayers() public view returns (address[16] memory) {
        return players;
    }

    function selectJerseyNumber(uint256 _type) public returns (uint256) {
        require(_type >= 0 && _type <= 15);
        players[_type] = msg.sender;
        return _type;
    }
}
