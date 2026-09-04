// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.9.0;
 
import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";
 
contract Quicoin is ERC20 {
  constructor() ERC20("En un lugar de la mancha, de cuyo nombre no quiero acordarme...", "QUICOIN") {
        _mint(address(this), 100000000 * (10 ** uint256(decimals())));
        _approve(address(this), msg.sender, totalSupply());
        _transfer(address(this), msg.sender, totalSupply());        
  }
}
