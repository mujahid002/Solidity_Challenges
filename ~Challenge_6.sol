/**  

Solidity challenge: #6

If we call the functions 'changeN1' and 'changeN2' by passing 
the number 5 as an argument, what will be the new values of 
variables 'n1' and 'n2'?

*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract Number{
    uint256 n1=1;
    uint256 n2=1;

    function changeN1(uint256 _n1) public{
        require(_n1>10);
        n1=_n1;
    }
    function changeN2(uint256 _n2) public{
        n2=_n2;
        require(_n2>10);
    }
}







/**

If you call the changeN1 function and pass the number 5 as an argument, 
the function will throw a require exception because the condition 
_n1 > 10 is not met. Therefore, the value of variable n1 will remain 
unchanged, and it will still be 1.

If you call the changeN2 function and pass the number 5 as an argument, 
the function will execute the statement n2 = _n2 before the require 
statement. Therefore, the value of variable n2 will be updated to 5. 
However, the require statement _n2 > 10 will also throw an exception, 
indicating that the function execution failed. Nonetheless, the value 
of n2 will remain 5.

Therefore n1=1 and n2=5;
 */