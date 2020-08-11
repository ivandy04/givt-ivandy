pragma solidity >=0.4.21 <0.7.0;

contract ip4 {

    mapping (address => string) public ips;
    string public ip4Regex="^(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})(\\.(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[0-9]{1,2})){3}$";
    constructor() public {
        ips[msg.sender]="127.0.0.2";
    }

    function set_ip(string memory ip)public  returns (bool){
        if (keccak256(abi.encodePacked(ip)) == keccak256(abi.encodePacked(ip4Regex))) {
           ips[msg.sender] = ip;
            return true;
        }else{
            return false;
        }
        
    }

    function delete_ip(address add)public {
        delete ips[add];
    }

    function get_ip(address addr)public view returns (string memory) {
        return ips[addr];
    }
    
}
