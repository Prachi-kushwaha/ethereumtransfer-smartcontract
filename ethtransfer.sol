 // SPDX-License-Identifier: Unlicensed
pragma solidity >=0.4.16 <0.9.0;

contract cryptotransfer{

        event transactions(address indexed to, address indexed from, uint amount, string symbol);
        event recipients(address recipientof, address recipient, string recipientName  );

       function _transfer(address payable _to,  string memory symbol) public payable  {

             _to.transfer(msg.value);
             emit transactions(msg.sender, _to , msg.value, symbol);
       }

       function saveTranx(address to , address from, uint amount,  string memory symbol) public  {
           emit transactions(to, from, amount, symbol);
       }

       function addRecipient(address recipient, string memory name) public {
           emit recipients(msg.sender, recipient, name);
       }
}
