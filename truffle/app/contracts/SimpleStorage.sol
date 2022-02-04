pragma solidity ^0.8.11;

contract SimpleStorage {
    uint256 data;

    function setData(uint256 d) external {
        data = d;
    }

    function getData() external view returns (uint256) {
        return data;
    }
}
