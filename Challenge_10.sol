/**  

Solidity challenge: #10

Which of these functions consumes less gas? double(), or shiftLeft() ?
*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract test {
    function double(uint8 x) virtual public pure returns(uint8){
        return x*2;
    }
    function shiftLeft(uint8 x) virtual public pure returns(uint8){
        return x << 1;
    }
}






/**

The shiftLeft() function performs a bitwise left-shift operation (<<) 
on the x parameter, which is a relatively simple operation in terms of 
gas consumption. It involves manipulating the bits of a single uint8 value, 
which is an efficient operation in the EVM.

On the other hand, the double() function performs a multiplication 
operation (x * 2). While multiplying by 2 is a simple operation, 
it still involves a multiplication instruction, which can consume 
slightly more gas compared to the bitwise left-shift operation.

Therefore, if we focus solely on gas consumption, the shiftLeft() function is likely to consume less gas than the double() function.
 */