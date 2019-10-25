pragma solidity ^0.5.11;
contract Auction{
    function Auction()public{
      max_bidders=4;
      max_items=3;
      biddersCount=0;
      bidders=new Person [](max_bidders);
      items=new Item[](max_items);
    }
    struct Item{
        uint itemId;
        uint[] itemTokens;
    }
    struct Person{
        uint    tokenId;
        address pAddress;
        uint[]  tokenBal;
    }
    uint public max_bidders;
    uint public max_items;
    uint public biddersCount;
    Person[] public bidders;
    Item[] public items;
    
    
    
}