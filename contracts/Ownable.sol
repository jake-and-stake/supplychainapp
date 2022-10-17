// SPDX-License-Identifier: MIT

pragma solidity ^0.8.10;

contract Ownable {
    
    address payable _owner;

    constructor() {
        _owner = payable(address(msg.sender));
    }

    modifier onlyOwner {
        require(isOwner(), "You are not the owner of this contract.");
        _;
    }

    function isOwner() public view returns(bool) {
        return (msg.sender == _owner);
    }
}