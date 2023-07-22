// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "hardhat/console.sol";

contract errorHandler{
    uint public age;

    function setAge(uint _age) public {
        age=_age;
    }

    function testAssert() public view{
        assert(age>=18);
        console.log("You are an Adult");

    }
    function testRequire() public view{
        require(age>=18, "Minors are not allowed");
        console.log("You are an Adult");
        
    }
    function testRevert() public view{
        if(age>=18){
            console.log("You are an Adult");
        }
        else{
            revert("Minors are not allowed");
        }
        
    }
}
