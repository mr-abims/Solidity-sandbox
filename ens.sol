// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ENS {
//   pricing: would be determined by number of characters in the desired name
//   ownership: 1. one address can only have one ENS 
//              2. user desired name is the ens
//              3. if name is taken, return 'unavailable'
//              4. extension is .w3bridge
//              5. ens purchased is valid for 1month
//   -------------------
//   Incentive for early adoptors, after 2weeks

// price -> 3char = 100; 4chars = 50; >=5 = 30

    enum Price {
        SHORT, // 3chars
        MEDIUM, // 4chars
        LONG // >=5chars
    }
    mapping(address => string) public address_ens_map;
    mapping(string => bool) public registered_ens;
    string constant EXTENSION = ".w3bridge";

    // ?should we create an Error for 'unavailable'

    // modifier checkConditions(string memory _name){
    //     // check whether address is mapped to a name already
    //     require(keccak256(abi.encodePacked(address_ens_map[msg.sender])) == keccak256(abi.encodePacked("")), "Sorry, you can only have one name per address");

    //     require(bytes(_name).length>=3, "Sorry, name too short.");
    //     require(!registered_ens[_name], "Sorry, this name is taken");
    //     _;

        
    // }
    
    // creates the ens for an address
    function create_ens(string memory _name) public  returns(string memory) {
        if (bytes(_name).length<=2){
            revert("Sorry, name too short.");
        }
        // check whether address is mapped to a name already
        if (keccak256(abi.encodePacked(address_ens_map[msg.sender])) != keccak256(abi.encodePacked(""))){
            revert("Sorry, you can only have one name per address");
        }
        if (registered_ens[_name]) {
            revert("Sorry, this name is taken");
        }
        address_ens_map[msg.sender] = string(abi.encodePacked(_name, EXTENSION));
        registered_ens[_name] = true;
        return address_ens_map[msg.sender];
    }

}