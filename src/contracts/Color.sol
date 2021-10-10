// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0;
import "./ERC721Full.sol";

contract Color is ERC721Full {
  string[] public colors;
  mapping(string => bool) _colorExist;


   
  constructor() ERC721Full("Color", "COLOR") public {
  }

  function mint(string memory _color) public{
    //require = true break and stop
    //require false continue 
    require(!_colorExist(_color));

    uint _id = color.push(_color);
    _mint(msg.sender, _id);
    _colorExist[_color] = true;

  }
}
