/**  

Solidity challenge: #7

What value does the function test() return? Explain your calculation.

*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract Test{
    uint256 x=10;
    uint256 y=20;

    function test() public view returns(uint256){
        return (x & y) ^ (x | y);
    }
}





/**

1. x & y performs a bitwise AND operation between x and y. In this case, 
x is 10 (represented in binary as 1010) and y is 20 (represented in 
binary as 10100). Performing the bitwise AND operation, we get: 00100
The result of x & y is 4 (binary 00100).

2. x | y performs a bitwise OR operation between x and y. Using the same 
binary representations of x and y, we get: 11110
The result of x | y is 30 (binary 11110).

3.Finally, (x & y) ^ (x | y) performs the bitwise XOR operation.
The result of (x & y) ^ (x | y) is 26 (binary 11010)

26

 */
