/**  

Solidity challenge: #1
Where is the vulnerability in this code?

*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract Owner{
    address public owner;
    uint256 private code;

    constructor (address _owner, uint256 _code){
        owner=_owner;
        code=_code;
    }

    function getOwner() public view returns(address){
        return owner;
    }

    function changeOwner(address _owner, uint256 _code) public {
        require(code==_code, "Incorrect code");
        owner=_owner;

    }

}






/**

pragma solidity ^0.8.18;
contract Owner {
    address public owner;
    uint256 private code;

    constructor(address _owner, uint256 _code) {
        require(_owner != address(0), "Invalid owner address"); ----Check address cannot be invalid or Undefined 
        owner = _owner;                                         ----we take specific length of code but for this code that's unnecessary
        code = _code;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the owner can call this function");
        _;                                          
    }

    function getOwner() public view returns (address) {
        return owner;
    }

    function changeOwner(address _owner, uint256 _code) public onlyOwner { ----Access controll by current owner only!
        require(_owner != address(0), "Invalid owner address");
        require(code == _code, "Incorrect code");
        owner = _owner;
    }
}

 */
