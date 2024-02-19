// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.19;

import "https://github.com/MVPWorkshop/filecoin-solidity-library/blob/npm-exp/contracts/v0.8/PowerAPI.sol";

contract Flatten_Tst {
    uint256 public number;

    function callAPI(uint256 newNumber) public view returns (int256){
        (int256 exit_code, ) = PowerAPI.minerCount();

        return exit_code;
    }

    function increment() public {
        number++;
    }
}
