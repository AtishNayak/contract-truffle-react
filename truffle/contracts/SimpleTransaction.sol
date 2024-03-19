//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleTransaction {
    event Transfer(address indexed from, address indexed to, uint256 amount);

    function transfer(address payable _to) external payable {
        require(msg.value > 0, "Value sent must be greater than 0");
        _to.transfer(msg.value);
        emit Transfer(msg.sender, _to, msg.value);
    }
}