// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract TokenTransfer {
    function sendETH(address payable _recipient) external payable {
        require(msg.value > 0, "Value must be greater than 0");
        _recipient.transfer(msg.value);
    }
}
