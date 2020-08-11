pragma solidity >=0.4.21 <0.7.0;

contract ip4 {

    mapping (address => string) ips;

    constructor() public{
        ips[msg.sender]= "127.0.0.2";
    }

    function hashCompareWithLengthCheck(string memory a) internal returns (bool) {
     string memory ip4Regex="^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$";
    if(bytes(a).length != bytes(ip4Regex).length) {
        return false;
    } else {
        return keccak256(abi.encodePacked(a)) == keccak256(abi.encodePacked(ip4Regex));
    }
}

    
    function set_ip(string memory ip) public {
       hashCompareWithLengthCheck(ip);
       if(!false){
        ips[msg.sender] = ip;
       }
    }

    function delete_ip(address add) public {
        delete ips[add];
    }

    function get_ip(address addr) public view returns (string memory)  {
        return ips[addr];
    }
}
