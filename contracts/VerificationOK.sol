// SPDX-License-Identifier: MIT
pragma solidity 0.8.6;

import "@openzeppelin/contracts/utils/introspection/IERC165.sol";

contract VerificationOK is IERC165 {
    function supportsInterface(bytes4 selector) external view override returns(bool) {
        return false;
    }
    function uniqBytecode() external view returns(uint) {
        return 111;
    }
}
