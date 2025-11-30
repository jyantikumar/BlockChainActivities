// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract firstContract{

    function firstFunction() internal pure returns (string memory) {
        return "First Function";
    }
    function secondFunction() internal pure returns (string memory) {
        return "Second Function";
    }
}
contract secContract is firstContract{
    function thirdFunction() internal pure returns (string memory) {
        return "Third Function";
    }
}

contract thirdContract is secContract{
    function allFunction() public pure returns (string memory, string memory, string memory) {
        return (firstFunction(), secondFunction(), thirdFunction());
    }
}
