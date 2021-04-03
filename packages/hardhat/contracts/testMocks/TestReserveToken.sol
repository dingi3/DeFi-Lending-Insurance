// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.6;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract TestReserveToken is ERC20, Ownable {
    constructor() ERC20("PDADI Test Token", "TPDADI"){
        _mint(msg.sender, 2000 ether);
    }

    function faucet(address to, uint256 amount) external {
        _mint(to, amount);
    }

    function burn(address account, uint256 amount) external {
        _burn(account, amount);
    }

}