/**  

Solidity challenge: #9

What does C.test() return?
*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract A {
    function test() virtual public pure returns(uint256){
        return 1;
    }
}
contract B {
    function test() virtual public pure returns(uint256){
        return 2;
    }
}
contract C is A,B {
    function test() override(A,B) public pure returns(uint256){
        return super.test();
    }
}




/**

 In contract C, the test() function is overridden using the override keyword 
 to specify that it overrides the test() function from contracts A and B.

The overridden test() function in contract C calls super.test() to invoke 
the test() function from the parent contracts. In this case, super.test() 
will invoke the test() function from contract B since contract B is listed 
after contract A in the inheritance hierarchy.

Therefore, when C.test() is called, it will return 2, as the overridden function 
in contract C calls super.test(), which returns 2 from contract B.
 */
