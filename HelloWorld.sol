//SPDX-License-Identifier: GNU General Public License 3.0
pragma solidity ^0.8.7;

contract HelloWorld {
    string public greet = " Hello ";
    string public greeting;

    constructor(string memory greetingMsg) {
        greeting = greetingMsg;
    }

    function createGreeting(string memory newGreeting) public {
        greeting= newGreeting;
    }

    function getGreeting() public view returns (string memory) {
        return string(abi.encodePacked(greet, greeting));
    }
}