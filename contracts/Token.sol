// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

// TDD - Test Driven Development
contract Token {
    string public name = "Maithali Token";
    string public symbol = "MGT";

    uint public totalSupply = 1000;
    address public owner;

    mapping(address => uint) balances;

    constructor() {
        owner = msg.sender;
        balances[owner] = totalSupply;
    }

    function transfer(address to, uint amount) external {
        balances[msg.sender] -= amount;
        balances[to] += amount;
    }

    function balanceOf(address account) external view returns (uint) {
        return balances[account];
    }
}
