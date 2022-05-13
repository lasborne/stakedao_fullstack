// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;
import "./SafeMath.sol";
//import "@OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract stakeDAO {
    using SafeMath for uint256;

    address public ownerAddress;
    address public contractAddress = address(this);
    string public tokenType = "ERC-20";

    uint256 _totalSupply = 1000000000000000000000000;
    mapping(address => uint) public _balanceOf;
    mapping (address => mapping (address => uint256)) public _allowances;
    mapping (address => mapping (address => uint256)) public _approve;
    uint256 internal value;
    uint256 internal _balance;
    address[] public addressList;

    constructor() {

        _balanceOf[contractAddress] = _totalSupply;
        ownerAddress = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == ownerAddress);
        _;
    }
    modifier nonZeroBalance(address _from) {
        require(_balanceOf[_from] > 0);
        _;
    }
    event Transfer(address indexed _from, address indexed _to, uint256 _value);
    event Approval(address indexed _owner, address indexed _spender, uint256 _value);
    function name() public pure returns (string memory) {
        return "StakeDAO";
    }
    function symbol() public pure returns (string memory) {
        return "STK";
    }
    function decimals() public pure returns (uint8) {
        return 18;
    }
    function totalSupply() public view returns (uint256) {
        return _totalSupply;
    }
    function balanceOf(address _owner) public view returns (uint256 balance) {
        return _balanceOf[_owner];
    }

    function transfer(address _to, uint256 _value) public onlyOwner payable returns (bool success) {
        if(_value <= _balanceOf[contractAddress]) {
            _balanceOf[contractAddress] = _balanceOf[contractAddress].sub(_value);
            _balanceOf[_to] = _balanceOf[_to].add(_value);
        }
        value = _balanceOf[_to];
        addressList.push(_to);
        return success;
    }
    function transferFrom(address _from, address _to, uint256 _value) public nonZeroBalance(_from) returns (bool success) {
        if(approve(_from, _value)) {
            if(_value <= _balanceOf[_from]) {
                _balanceOf[_from] = _balanceOf[_from].sub(_value);
                _balanceOf[_to] = _balanceOf[_to].add(_value);
            }
            emit Transfer(_from, _to, _value);
            return success;
        }
    }
    function approve(address _spender, uint256 _value) public returns (bool success) {
        _approve[msg.sender][_spender] = _value;
        emit Approval(msg.sender, _spender, _value);
        return true;
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
        return _allowances[_owner][_spender];
    }

}