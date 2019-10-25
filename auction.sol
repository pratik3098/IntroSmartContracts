pragma solidity ^0.5.11;
contract Auction{
    struct Item{
        uint itemId;
        uint[] itemTokens;
    }
    struct Person{
        uint tokenId;
        address pAddress;
        uint  tokenBal;
    }
    
    address public owner;
    uint public max_bidders;
    uint public max_items;
    uint public biddersCount;
    Person [] public bidders;
    Item [] public items;
    Person chairPerson;
    
    constructor()public{
      owner=msg.sender;
      max_bidders=4;
      max_items=3;
      biddersCount=0;
      bidders=new Person [](max_bidders);
      items=new Item[](max_items);
      uint[] memory array;
      items[0]=Item({itemId:0,itemTokens:array});
      items[1]=Item({itemId:1,itemTokens:array});
      items[2]=Item({itemId:2,itemTokens:array});
    }
    function register() public payable{
        require(biddersCount<max_bidders);
        bidders[biddersCount].tokenId=biddersCount;
        bidders[biddersCount].pAddress=msg.sender;
        bidders[biddersCount].tokenBal=5;
        biddersCount++;
    }
    
    
    modifier onlyOwner() { 
        require(msg.sender == owner,'Error: Only owner can execute the contract');
        _;
    }
    
    
}