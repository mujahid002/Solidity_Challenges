/**  

Solidity challenge: #2
The following Solidity contract contains two functions "ramesh" and "suresh" 
that perform the same task, but one of them uses more gas than the other. 

Identify the function that uses less gas and explain why?

*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

contract Sum{
    function ramesh(uint256[] memory data) public pure returns(uint256){
        uint256 sum;
        for(uint256 i=0; i < data.length; i++){
            sum+=data[i];
        }
        return sum;
    }
    function suresh(uint256[] memory data) public pure returns(uint256){
        uint256 sum;
        for(uint256 i=0; i < data.length; ++i){
            sum+=data[i];
        }
        return sum;
    }
}







/**  

suresh uses less gas compared to the function ramesh.

In Solidity, the ++i operator is a prefix increment operator, 
which increments the value of i before evaluating the expression. 
On the other hand, the i++ operator is a postfix increment operator, 
which evaluates the expression before incrementing the value of i.

By using the prefix increment operator (++i), the suresh function 
avoids creating a temporary variable to store the value of i during 
each iteration of the loop. This optimization reduces gas consumption 
because it eliminates the need for the temporary variable and the 
associated storage operations.

In contrast, the ramesh function uses the postfix increment operator (i++), 
which requires creating and updating the temporary variable to hold the value 
of i during each iteration. These additional operations result in higher gas 
consumption compared to the suresh function.

*/
