/**  

Solidity challenge: #12

This contract implements a lottery system where users can register by 
paying 1 ETH each, and the owner can choose a winner and transfer the 
lottery amount. What's wrong with deploying it on the mainnet?

*/

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.18; 

contract Lottery {

    address public owner;
    uint public id;
    mapping(uint=>address) public participantWithId;
    uint public winnerId;
    address public winner;

    constructor(){
        owner=msg.sender;
    }

    function register() public payable {
        require(msg.value ==1 ether, "min 1 ether required for registration");
        participantWithId[id]=msg.sender;
        id++;
    }

    function chooseWinner() public{
        require(owner==msg.sender, "owner only allowed");
        require(id=10, "min 10  participants required!");
        winnerId=uint(keccak256(abi.encodePacked(block.timestamp, block.number)))%10 +1;
        winner=participantWithId[winnerId];
        payable(winner).transfer(address(this).balance);
    }
}








/**

********************************
1. Randomness
2. Lack of validation for winner selection
3. Potential reentrancy vulnerability
4. Lack of access control for registration
5. Missing event notifications


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18; 

contract Lottery {
    address public owner;
    uint public id;
    mapping(uint => address) public participantWithId;
    uint public winnerId;
    address public winner;
    bool public isLotteryClosed; // Added a flag to track if the lottery is closed.

    event WinnerSelected(uint winnerId, address winner); // Event to notify the winner selection.

    constructor() {
        owner = msg.sender;
    }

    function register() public payable {
        require(msg.value == 1 ether, "Min 1 ether required for registration");
        require(!isLotteryClosed, "Lottery is closed"); // Check if the lottery is closed.
        
        participantWithId[id] = msg.sender;
        id++;
    }

    function chooseWinner() public {
        require(owner == msg.sender, "Owner only allowed");
        require(id >= 10, "Min 10 participants required!"); // change the condition to "greater than or equal to" 10 participants.
        require(!isLotteryClosed, "Lottery is closed"); // Check if the lottery is closed.

        winnerId = generateRandomNumber(id); // Call the secure random number generator.
        winner = participantWithId[winnerId];
        payable(winner).transfer(address(this).balance);
        emit WinnerSelected(winnerId, winner); // Emit the event for winner selection.
        
        isLotteryClosed = true; // Set the lottery as closed.
    }
    
    function generateRandomNumber(uint limit) private view returns (uint) {
        bytes32 hash = keccak256(abi.encodePacked(block.timestamp, block.difficulty, block.number));
        return uint(hash) % limit + 1;
    }
}


 */