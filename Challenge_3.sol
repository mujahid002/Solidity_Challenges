/**  

Solidity challenge: #3
Here again ramesh and suresh comes with The following Solidity contract contains 
two functions that perform the same task, but one of them uses more gas than the other. 

Identify the function that uses less gas and explain why.
*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Test{
    uint256 public a=10;
    uint256 public b=20;

    function ramesh() external view returns(uint256){
        return a+b;
    }
    function suresh() external payable returns(uint256){
        return a+b;
    }
}











/**

In the given Solidity contract, there are two functions named ramesh and suresh 
that perform the same task of returning the sum of a and b.

The function ramesh() is declared as external view which means it is a read-only 
function and does not modify the state of the contract. This function does not 
require any gas for execution since it only retrieves the values of a and b and 
returns their sum. It is a gas-efficient function because it does not involve 
any state changes.

On the other hand, the function suresh() is declared as external payable 
which means it is a payable function that can receive Ether and can modify 
the state of the contract. Even though the implementation of suresh() is the 
same as ramesh() in this case, the fact that it is payable implies that 
it has an additional overhead in terms of gas cost. When a function is payable, 
it requires some gas to handle the payment-related operations and state changes 
associated with receiving Ether.

Therefore, the function ramesh() uses less gas compared to suresh() because 
it does not involve any state changes or payment-related operations, 
making it a more gas-efficient choice for the given task.

 */