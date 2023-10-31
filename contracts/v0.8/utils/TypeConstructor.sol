// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "../types/CommonTypes.sol";
import "../../../vendor/solidity-BigNumber/src/BigNumbers.sol";

/// @title TypeConstructor
/// @notice This library is a set of functions that allows to construct filecoin common types from solidity
/// @author Filecoin Project
library TypeConstructor {
    using BigNumbers for *;

    error InvalidFormat();
    error InvalidLength();
    error InvalidBase58Character();

    /// @notice Converts bytes to filecoin common type DealLabel
    /// @param data The data must be no longer than 32 bytes
    function dealLabelFromBytes(bytes memory data) internal pure returns (CommonTypes.DealLabel memory) {
        if (data.length > 32) {
            revert InvalidLength();
        }
        return CommonTypes.DealLabel(data, false);
    }

    /// @notice Converts a string to filecoin common type DealLabel
    /// @param data UTF-8 string, must be shorter than 32 bytes when encoded
    function dealLabelFromString(string memory data) internal pure returns (CommonTypes.DealLabel memory) {
        bytes memory dataBytes = bytes(data);
        if (dataBytes.length > 32) {
            revert InvalidLength();
        }
        return CommonTypes.DealLabel(dataBytes, true);
    }

    /// @notice Converts a string to a filecoin cid common type
    /// @param cid The CIDv1/CIDv0 cid string
    function cidFromString(string memory cid) internal view returns (CommonTypes.Cid memory) {
        bytes memory cidBytes = bytes(cid);
        // CIDv0
        if (cidBytes.length == 46 && cidBytes[0] == hex"51" && cidBytes[1] == hex"6d") {
            return CommonTypes.Cid(decodeCidV0(cidBytes));
        }
        // CIDv1

        revert InvalidFormat();
    }

    /// @notice Decodes a CIDv0 string using the base58 decoding
    /// @param dataBytes The CIDv0 string bytes
    /// @dev This function is specifically designed for decoding CIDv0 strings, which have a unique format
    ///      The use of 43 as the optimal number for loop helps to avoid overflow and BigNumber operations
    function decodeCidV0(bytes memory dataBytes) private view returns (bytes memory) {
        uint256 result;
        uint256 result1;
        for (uint256 i; i < 43;) {
            unchecked {
                result = result * 58 + decodeBase58Char(dataBytes[i]);
                ++i;
            }
        }
        
        unchecked {
            result1 = 58 * (58 * uint256(decodeBase58Char(dataBytes[43])) + uint256(decodeBase58Char(dataBytes[44])))
                + decodeBase58Char(dataBytes[45]);
        }

        dataBytes = (
            BigNumbers.init(abi.encodePacked(result), false).mul(
                BigNumbers.init(abi.encodePacked(uint256(195112)), false) // 58 ** 3
            ).add(BigNumbers.init(abi.encodePacked(result1), false)) 
        ).val;

        bytes32 digest;
        bytes2 prefix;
        assembly {
            prefix := shl(240, mload(add(dataBytes, 0x20)))
            digest := mload(add(dataBytes, 0x40))
        }

        if (prefix != hex"1220") {
            revert InvalidFormat();
        }

        return abi.encodePacked(prefix, digest);
    }

    /// @notice Converts a base58 character to a uint8 value
    /// @param char The base58 character
    function decodeBase58Char(bytes1 char) internal pure returns (uint8 value) {
        if (char >= "1" && char <= "9") {
            value = uint8(char) - 49;
        } else if (char >= "A" && char <= "H") {
            value = uint8(char) - 56;
        } else if (char >= "J" && char <= "N") {
            value = uint8(char) - 57;
        } else if (char >= "P" && char <= "Z") {
            value = uint8(char) - 58;
        } else if (char >= "a" && char <= "k") {
            value = uint8(char) - 64;
        } else if (char >= "m" && char <= "z") {
            value = uint8(char) - 65;
        } else {
            revert InvalidBase58Character();
        }
    }
}
