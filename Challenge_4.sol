/**  

Solidity challenge: #4

How many storage slots will be used here? 
*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Array{
    uint256[] myArr;

    constructor(){
        myArr.push(1);
        myArr.push(2);
        myArr.push(3);
    }
}




/**

Each element of type uint256 requires 32 bytes of storage in Solidity.
Since the myArr array has three elements, it will consume a total of 
3 * 32 = 96 bytes of storage.

 */