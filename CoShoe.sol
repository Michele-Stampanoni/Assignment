pragma solidity >=0.5.0 <0.7.0; 

import "./safemath.sol"; 

contract CoShoe {
  
  using SafeMath for uint256;

    struct Shoe {
    address owner;
    string name;
    bytes32 image; 
    bool isSold;
     }

 uint price = 0.5 ether * 1e18; 

 uint shoesSold = 0; 
 
 Shoe[] public shoes; 

 constructor() public {
    owner = msg.sender; 
    name = ""; 
    image = "";
    isSold = false; 
    shoes.push(Shoe(owner, name, image, isSold)); 
   }  

 function buyShoe(string memory _name, bytes32 _image) public view {
    require(isSold == false); 
    require(msg.value == price); 
    Shoe[address.owner] = msg.sender; 
    name = _name; 
    iamge = _image; 
    isSold = true; 
    }


 function checkPurchases(bool isSold) public view returns(bool[] memory) {
    if (shoes[] == msg.sender) {
   return isSold = true;
      }
     }
    }     
}