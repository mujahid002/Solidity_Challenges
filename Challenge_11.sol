/**  

Solidity challenge: #11

This contract is intended to allow the deployer to load some ETH 
into the contract during deployment and later call the 
sendEther() function to send 1 ETH from the contract 
to any specified address. However, there is an error in the code. Find the error.?
*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract Test {

    address public owner;
    constructor() payable{
        owner =msg.sender;
    }
    function sendEther(address _a) public{
        require(address(this).balance>=1);
        require(msg.sender==owner,"only owner is allowed to send ether");
        uint a=1;
        payable(_a).transfer(a);
    }
}







/**

The error in the code is related to the transfer() function call within 
the sendEther() function.

In the current code, the transfer() function is called with the a 
variable as the value to be transferred. However, the a variable is 
defined and assigned the value of 1, which means that only 
1 wei (the smallest unit of Ether) will be transferred instead of 1 ETH.

To fix this error and send 1 ETH instead of 1 wei, you need to update the 
transfer() function call to use the correct value. Here's the corrected code:

-----------payable(_a).transfer(1 ether);---------------

By specifying 1 ether as the value, it ensures that 1 ETH will be transferred 
to the specified address _a.

When specifying values in Solidity, you can use suffixes 
like wei, ether, szabo, etc., to represent different denominations of Ether. 
In this case, 1 ether represents 1 ETH.





 */