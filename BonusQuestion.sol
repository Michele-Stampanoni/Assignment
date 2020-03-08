pragma solidity >=0.5.0 <0.7.0; 

import "./safemath.sol"; 
import "./Ownable.sol"; 
import "./ERC20.sol"; 
import "./CoToken.sol"; 

contract CoShoe is CoToken {
  
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

 function buyShoe(address addr, string memory _name, bytes32 _image) public view {
    
    CoToken c = CoToken(addr);   
    owner = CoShoe(addr);    
    if (CoToken(addr)[msg.sender] == owner )  {                                                   //Updates in CoShoec ontract 
    emit transferFrom(address from, address to, uint256 value);  
    } else {
       revert(buyShoe); 
    }

    require(isSold == false); 
    require(msg.value == price); 
    Shoe[address.owner] = msg.sender; 
    name = _name; 
    iamge = _image; 
    isSold = true; 
    }


 function transferFrom(address from, address to, uint256 value) public returns (bool) {          //Update in CoToken contract 
    require(from = public); 
    require(to != address(0));
    } 

