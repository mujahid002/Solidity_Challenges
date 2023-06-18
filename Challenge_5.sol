/**  

Solidity challenge: #5

In which slot is password stored? Start counting from slot 0.
Explain your calculation.? 

*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract findSlot{
    uint16 public tokenId;
    address public admin;
    uint128 public saleStart;
    bool public saleStarted;
    uint16 public tokenSupply;
    address[2] public buyers;
    bytes32 private password;
    bool public isPaused;
}






/**

In Solidity, each storage slot has a size of 32 bytes. The variables declared 
in the contract are assigned consecutive storage slots starting from slot 0.

Calculating the slot number for each variable:

// tokenId is a uint16, which occupies 2 bytes. It will be stored in slot 0.

// admin is an address, which occupies 20 bytes. It will be stored in slot 1.

// saleStart is a uint128, which occupies 16 bytes. It will be stored in slot 2.

// saleStarted is a bool, which occupies 1 byte. It will be stored in slot 3.

// okenSupply is a uint16, which occupies 2 bytes. It will be stored in slot 4.

// buyers is an array of type address[2], which occupies 2 * 20 = 40 bytes. 
It will be stored in slots 5 and 6.

password is a bytes32, which occupies 32 bytes. It will be stored in slot 7.

// isPaused is a bool, which occupies 1 byte. It will be stored in slot 8.

Therefore, the password variable is stored in slot 7.

 */