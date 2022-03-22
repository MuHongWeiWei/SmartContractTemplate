//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Ownable {
    address _owner;
    address _steven;

    constructor() {
        _owner = tx.origin;
        _steven = 0x1DE949940d6156455323FbE490141f8D7C6E7222;
    }

    modifier onlyOwner {
        require(msg.sender == _owner);
        _;
    }

    modifier onlySteven {
        require(msg.sender == _steven);
        _;
    }

    function fireSteven(address newSteven) public onlySteven {
        _steven = newSteven;
    }

    function owner() public view virtual returns (address) {
        return _owner;
    }

    function steven() public view virtual returns (address) {
        return _steven;
    }
}