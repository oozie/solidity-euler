// SPDX: Unlicensed
pragma solidity ^0.5.0;

import  "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Euler001.sol";

contract TestEuler001 {
    Euler001 euler001 = Euler001(DeployedAddresses.Euler001());

        
    function testBaseCase() public {
        Assert.equal(23, euler001.getSumOfMultiplesBelow(10), "sum of multiples of 3 or 5 below 10 is 23");
    }
    
    function testAnswer() public {
        Assert.equal(233168, euler001.getSumOfMultiplesBelow(1000), "sum of multiples of 3 or 5 below 1000 is 233168");
    }
}