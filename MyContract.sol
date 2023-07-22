// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

import "hardhat/console.sol";

contract errorHandler{
    uint public UserAge;

    function setAge(uint _age) public {
        UserAge=_age;
    }

    function testAssert() public view{
        assert(UserAge>=18);
        console.log("You are an Adult");

    }
    function testRequire() public view{
        require(UserAge>=18, "Minors are not allowed");
        console.log("You are an Adult");
        
    }
    function testRevert() public view{
        if(UserAge>=18){
            console.log("You are an Adult");
        }
        else{
            revert("Minors are not allowed");
        }
        
    }
}
