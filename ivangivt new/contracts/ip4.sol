pragma solidity >=0.4.21 <0.7.0;

contract ip4 {

    mapping (address => string) ips;

    constructor() public{
        ips[msg.sender]= "127.0.0.2";
    }

    
    function set_ip(string memory ip) public {
        ips[msg.sender] = ip;
    }

    function delete_ip(address add) public {
        delete ips[add];
    }

    function get_ip(address addr) public view returns (string memory)  {
        return ips[addr];
    }
}