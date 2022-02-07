// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract GeneralRoom {

    enum ChargerMaker {
        LENOVO,
        HP_BIG_MOUTH,
        HP_SMALL_MOUTH,
        APPLE
    }

    enum LaptopSize{
        LARGE,
        MEDIUM,
        SMALL
    }

    struct Laptop{
        // suggestions: uint and enum
        uint8 screen_size;
        // suggestions: bytes, enum, string
        bytes32 color;
        // suggestions: enums, string
        // chargers are identified by their maker e.g lenovo, hp, apple
        ChargerMaker charger;
        // suggestions: bool, enums
        // valid options are {full_keyboard, or not_full_keyboard}
        bool keyboard;
    }

    struct Chair{
        // suggestions: bytes, enum, string
        bytes color;
        // suggestions: enumn, string
        // valid optins are {big, small, medium}
        // !Adventure! use struct for size
        LaptopSize size;
        string shape;
        // to signify it's state {faulty or not faulty}
        bool condition;
    }

    Laptop public jumoke_laptop;
    Laptop abdul_laptop;
    Laptop eric_laptop;

    function getAdbulLaptop() public view returns(Laptop memory) {
        return abdul_laptop;

    }
    
    function setAbdulLaptop(uint8 _screen, bytes32 _color, ChargerMaker _charger, bool _keyboard) public {
        abdul_laptop = Laptop({
            screen_size: _screen,
            color: _color,
            charger: _charger,
            keyboard: _keyboard
        });
    }

    function convertToByte32(string memory _value) public pure returns (bytes32){
        return bytes32(bytes(_value));
    }

}