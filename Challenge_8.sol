/**  

Solidity challenge: #8

How many storage slots would this struct use as a state variable? 
Explain your calculation.
*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract Test{
    struct Test{
        address reciever;
        uint8 id;
        bool isApproved;
        uint64 amount;
    }

}






/**

To determine the number of storage slots used by a struct, 
we need to calculate the storage size of each individual variable 
and sum them up. Each slot takes 32-bytes of storage.

then,

address(20)--slot0
uint8(1)--slot1
bool(1)--slot2
uint64(8)--slot3

Total storage slots are 4.
 */