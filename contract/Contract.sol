// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract YourContract {
    address public owner;
    uint256 public value;

    event ValueSet(uint256 newValue);

constructo  () {
        owner = msg.sender;
        value = 0;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can call this function");
        _;
    }

    function setValue(uint256 _newValue) external onlyOwner {
        value = _newValue;
        emit ValueSet(_newValue);
    }

    function getValue() external view returns (uint256) {
        return value;
    }
}

