pragma solidity ^0.5.0;


contract Euler001 {
    function getSumOfMultiplesBelow(uint limit) public pure returns(uint) {
        uint sum = 0;
        for (uint i=1; i<limit; i++) {
            if (i % 3 == 0) {
                sum += i;
            } else if (i % 5 == 0) {
                sum += i;
            }
        }
        return sum;
    }
}