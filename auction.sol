pragma solidity ^0.5.11;
contract Auction{
    enum 
    struct Item{
        uint itemId;
        uint[] itemTokens;
    }
    struct Person{
        address pAddress;
        uint[]  tokenBal;
    }
    Person[] public bidders;
    Item[] memory public items;
    constructor() public {
        items=new Item[](3);
        bidders=new Person[](4);
    }
}