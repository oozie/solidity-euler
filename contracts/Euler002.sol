pragma solidity ^0.5.0;

contract Euler002 {
    function solve(uint limit) public pure returns(uint) {
        uint a = 1;
        uint b = 1;
        uint sum = 0;
        while (a + b < limit) {
            uint c = a + b;
            a = b;
            b = c;
            if (c % 2 == 0) {
                sum += c;
            }
        }
        return sum;
    }
}