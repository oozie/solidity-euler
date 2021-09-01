// SPDX: Unlicensed
pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Euler002.sol";

contract TestEuler002 {
    Euler002 euler002 = Euler002(DeployedAddresses.Euler002());
    
    function testBaseCase() public {
        Assert.equal(44, euler002.solve(100), "base case");
    }
    
    function testAnswer() public {
        Assert.equal(4613732, euler002.solve(4000000), "answer");
    }
}