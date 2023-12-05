/*******************************************************************************
 *   (c) 2022 Zondax AG
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 ********************************************************************************/
// THIS CODE WAS SECURITY REVIEWED BY KUDELSKI SECURITY, BUT NOT FORMALLY AUDITED

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

import "../types/CommonTypes.sol";
import "../utils/Leb128.sol";
import "@ensdomains/buffer/contracts/Buffer.sol";

/// @notice This library is a set a functions that allows to handle filecoin addresses conversions and validations
/// @author Zondax AG and fevmate
library FilAddresses {
    using Buffer for Buffer.buffer;

    // Custom errors
    error CallFailed();
    error InvalidAddress();
    error InsufficientFunds();

    // Builtin Actor addresses (singletons)
    address constant SYSTEM_ACTOR = 0xfF00000000000000000000000000000000000000;
    address constant INIT_ACTOR = 0xff00000000000000000000000000000000000001;
    address constant REWARD_ACTOR = 0xff00000000000000000000000000000000000002;
    address constant CRON_ACTOR = 0xFF00000000000000000000000000000000000003;
    address constant POWER_ACTOR = 0xFf00000000000000000000000000000000000004;
    address constant MARKET_ACTOR = 0xff00000000000000000000000000000000000005;
    address constant VERIFIED_REGISTRY_ACTOR = 0xFF00000000000000000000000000000000000006;
    address constant DATACAP_TOKEN_ACTOR = 0xfF00000000000000000000000000000000000007;
    address constant EAM_ACTOR = 0xfF0000000000000000000000000000000000000a;

    // FEVM precompile addresses
    address constant RESOLVE_ADDRESS = 0xFE00000000000000000000000000000000000001;
    address constant LOOKUP_DELEGATED_ADDRESS = 0xfE00000000000000000000000000000000000002;
    address constant CALL_ACTOR = 0xfe00000000000000000000000000000000000003;
    // address constant GET_ACTOR_TYPE = 0xFe00000000000000000000000000000000000004; // (deprecated)
    address constant CALL_ACTOR_BY_ID = 0xfe00000000000000000000000000000000000005;

    // An ID address with id == 0. It's also equivalent to the system actor address
    // This is useful for bitwise operations
    address constant ZERO_ID_ADDRESS = SYSTEM_ACTOR;

    /// @notice allow to get a FilAddress from an eth address
    /// @param addr eth address to convert
    /// @return new filecoin address
    function fromEthAddress(address addr) internal pure returns (CommonTypes.FilAddress memory) {
        return CommonTypes.FilAddress(abi.encodePacked(hex"040a", addr));
    }

    /// @notice allow to get a eth address from 040a type FilAddress made above
    /// @param addr FilAddress to convert
    /// @return new eth address
    function toEthAddress(CommonTypes.FilAddress memory addr) internal pure returns (address) {
        if (addr.data[0] != 0x04 || addr.data[1] != 0x0a || addr.data.length != 22) {
            revert InvalidAddress();
        }
        bytes memory filAddress = addr.data;
        bytes20 ethAddress;

        assembly {
            ethAddress := mload(add(filAddress, 0x22))
        }

        return address(ethAddress);
    }

    /// @notice allow to create a Filecoin address from an actorID
    /// @param actorID uint64 actorID
    /// @return address filecoin address
    function fromActorID(uint64 actorID) internal pure returns (CommonTypes.FilAddress memory) {
        Buffer.buffer memory result = Leb128.encodeUnsignedLeb128FromUInt64(actorID);
        return CommonTypes.FilAddress(abi.encodePacked(hex"00", result.buf));
    }

    /// @notice allow to create a Filecoin address from bytes
    /// @param data address in bytes format
    /// @return filecoin address
    function fromBytes(bytes memory data) internal pure returns (CommonTypes.FilAddress memory) {
        CommonTypes.FilAddress memory newAddr = CommonTypes.FilAddress(data);
        if (!validate(newAddr)) {
            revert InvalidAddress();
        }

        return newAddr;
    }

    /// @notice allow to validate if an address is valid or not
    /// @dev we are only validating known address types. If the type is not known, the default value is true
    /// @param addr the filecoin address to validate
    /// @return whether the address is valid or not
    function validate(CommonTypes.FilAddress memory addr) internal pure returns (bool) {
        if (addr.data[0] == 0x00) {
            return (addr.data.length > 1 && addr.data.length <= 11);
        } else if (addr.data[0] == 0x01 || addr.data[0] == 0x02) {
            return addr.data.length == 21;
        } else if (addr.data[0] == 0x03) {
            return addr.data.length == 49;
        } else if (addr.data[0] == 0x04 && addr.data[1] == 0x0a) {
            return addr.data.length == 22;
        }

        return addr.data.length <= 256;
    }

    /**
     * @notice Convert ID to Eth address. Returns input if conversion fails.
     *
     * Attempt to convert address _a from an ID address to an Eth address
     * If _a is NOT an ID address, this returns _a
     * If _a does NOT have a corresponding Eth address, this returns _a
     *
     * NOTE: It is possible this returns an ID address! If you want a method
     *       that will NEVER return an ID address, see mustNormalize below.
     * @param _a address
     */
    function normalizeIDtoEthAddress(address _a) internal view returns (address) {
        // First, check if we have an ID address. If we don't, return as-is
        (bool isID, uint64 id) = isIDAddress(_a);
        if (!isID) {
            return _a;
        }

        // We have an ID address -- attempt the conversion
        // If there is no corresponding Eth address, return _a
        (bool success, address eth) = getEthAddress(id);
        if (!success) {
            return _a;
        } else {
            return eth;
        }
    }

    /**
     * @notice Convert ID to Eth address. Reverts if conversion fails.
     *
     * Attempt to convert address _a from an ID address to an Eth address
     * If _a is NOT an ID address, this returns _a unchanged
     * If _a does NOT have a corresponding Eth address, this method reverts
     *
     * This method can be used when you want a guarantee that an ID address is not
     * returned. Note, though, that rejecting ID addresses may mean you don't support
     * other Filecoin-native actors.
     */
    function mustNormalizeIDtoEthAddress(address _a) internal view returns (address) {
        // First, check if we have an ID address. If we don't, return as-is
        (bool isID, uint64 id) = isIDAddress(_a);
        if (!isID) {
            return _a;
        }

        // We have an ID address -- attempt the conversion
        // If there is no corresponding Eth address, revert
        (bool success, address eth) = getEthAddress(id);
        if (!success) revert InvalidAddress();
        return eth;
    }

    // Used to clear the last 8 bytes of an address    (addr & U64_MASK)
    address constant U64_MASK = 0xFffFfFffffFfFFffffFFFffF0000000000000000;
    // Used to retrieve the last 8 bytes of an address (addr & MAX_U64)
    address constant MAX_U64 = 0x000000000000000000000000fFFFFFffFFFFfffF;

    /**
     * @notice Checks whether _a matches the ID address format.
     * If it does, returns true and the id
     *
     * The ID address format is:
     * 0xFF | bytes11(0) | uint64(id)
     */
    function isIDAddress(address _a) internal pure returns (bool isID, uint64 id) {
        /// @solidity memory-safe-assembly
        assembly {
            // Zeroes out the last 8 bytes of _a
            let a_mask := and(_a, U64_MASK)

            // If the result is equal to the ZERO_ID_ADDRESS,
            // _a is an ID address.
            if eq(a_mask, ZERO_ID_ADDRESS) {
                isID := true
                id := and(_a, MAX_U64)
            }
        }
    }

    /**
     * @notice Given an Actor ID, converts it to an EVM-compatible address.
     *
     * If _id has a corresponding Eth address, we return that
     * Otherwise, _id is returned as a 20-byte ID address
     */
    function toEthAddress(uint64 _id) internal view returns (address) {
        (bool success, address eth) = getEthAddress(_id);
        if (success) {
            return eth;
        } else {
            return toIDAddress(_id);
        }
    }

    /**
     * @notice Given an Actor ID, converts it to a 20-byte ID address
     *
     * Note that this method does NOT check if the _id has a corresponding
     * Eth address. If you want that, try toAddress above.
     */
    function toIDAddress(uint64 _id) internal pure returns (address addr) {
        /// @solidity memory-safe-assembly
        assembly {
            addr := or(ZERO_ID_ADDRESS, _id)
        }
    }

    // An address with all bits set. Used to clean higher-order bits
    address constant ADDRESS_MASK = 0xFFfFfFffFFfffFFfFFfFFFFFffFFFffffFfFFFfF;

    /**
     * @notice Convert ID to Eth address by querying the lookup_delegated_address
     * precompile.
     *
     * If the actor ID corresponds to an Eth address, this will return (true, addr)
     * If the actor ID does NOT correspond to an Eth address, this will return (false, 0)
     *
     * --- About ---
     *
     * The lookup_delegated_address precompile retrieves the actor state corresponding
     * to the id. If the actor has a delegated address, it is returned using fil
     * address encoding (see below).
     *
     * f4, or delegated addresses, have a namespace as well as a subaddress that can
     * be up to 54 bytes long. This is to support future address formats. Currently,
     * though, the f4 format is only used to support Eth addresses.
     *
     * Consequently, the only addresses lookup_delegated_address should return have:
     * - Prefix:     "f4" address      - 1 byte   - (0x04)
     * - Namespace:  EAM actor id 10   - 1 byte   - (0x0A)
     * - Subaddress: EVM-style address - 20 bytes - (EVM address)
     *
     * This method checks that the precompile output exactly matches this format:
     * 22 bytes, starting with 0x040A.
     *
     * If we get anything else, we return (false, 0x00).
     */
    function getEthAddress(uint64 _id) internal view returns (bool success, address eth) {
        /// @solidity memory-safe-assembly
        assembly {
            // Call LOOKUP_DELEGATED_ADDRESS precompile
            //
            // Input: uint64 id, in standard EVM format (left-padded to 32 bytes)
            //
            // Output: LOOKUP_DELEGATED_ADDRESS returns an f4-encoded address.
            // For Eth addresses, the format is a 20-byte address, prefixed with
            // 0x040A. So, we expect exactly 22 bytes of returndata.
            //
            // Since we want to read an address from the returndata, we place the
            // output at memory offset 10, which means the address is already
            // word-aligned (10 + 22 == 32)
            //
            // NOTE: success and returndatasize checked at the end of the function
            mstore(0, _id)
            success := staticcall(gas(), LOOKUP_DELEGATED_ADDRESS, 0, 32, 10, 22)

            // Read result. LOOKUP_DELEGATED_ADDRESS returns raw, unpadded
            // bytes. Assuming we succeeded, we can extract the eth address
            // by reading from offset 0 and cleaning any higher-order bits:
            let result := mload(0)
            eth := and(ADDRESS_MASK, result)

            // Check that the returned address has the expected prefix. The
            // prefix is the first 2 bytes of returndata, located at memory
            // offset 10.
            //
            // To isolate it, shift right by the # of bits in an address (160),
            // and clean all but the last 2 bytes.
            let prefix := and(0xFFFF, shr(160, result))
            if iszero(eq(prefix, 0x040A)) {
                success := false
                eth := 0
            }
        }
        // Checking these here because internal functions don't have
        // a good way to return from inline assembly.
        //
        // But, it's very important we do check these. If the output
        // wasn't exactly what we expected, we assume there's no eth
        // address and return (false, 0).
        if (!success || returnDataSize() != 22) {
            return (false, address(0));
        }
    }

    /**
     * @notice Convert Eth address to ID by querying the resolve_address precompile.
     *
     * If the passed-in address is already in ID form, returns (true, id)
     * If the Eth address has no corresponding ID address, returns (false, 0)
     * Otherwise, the lookup succeeds and this returns (true, id)
     *
     * --- About ---
     *
     * The resolve_address precompile can resolve any fil-encoded address to its
     * corresponding actor ID, if there is one. This means resolve_address handles
     * all address protocols: f0, f1, f2, f3, and f4.
     *
     * An address might not have an actor ID if it does not exist in state yet. A
     * typical example of this is a public-key-type address, which can exist even
     * if it hasn't been used on-chain yet.
     *
     * This method is only meant to look up ids for Eth addresses, so it contains
     * very specific logic to correctly encode an Eth address into its f4 format.
     *
     * Note: This is essentially just the reverse of getEthAddress above, so check
     * the comments there for more details on f4 encoding.
     */
    function getActorIDForEthAddress(address _eth) internal view returns (bool success, uint64 id) {
        // First - if we already have an ID address, we can just return that
        (success, id) = isIDAddress(_eth);
        if (success) {
            return (success, id);
        }

        /// @solidity memory-safe-assembly
        assembly {
            // Convert Eth address to f4 format: 22 bytes, with prefix 0x040A.
            // (see getEthAddress above for more details on this format)
            //
            // We're going to pass the 22 bytes to the precompile without any
            // padding or length, so everything will be left-aligned. Since
            // addresses are right-aligned, we need to shift everything left:
            // - 0x040A prefix - shifted left 240 bits (30 bytes * 8 bits)
            // - Eth address   - shifted left 80 bits  (10 bytes * 8 bits)
            let input := or(shl(240, 0x040A), shl(80, _eth))
            // Call RESOLVE_ADDRESS precompile
            //
            // Input: Eth address in f4 format. 22 bytes, no padding or length
            //
            // Output: RESOLVE_ADDRESS returns a uint64 actor ID in standard EVM
            // format (left-padded to 32 bytes).
            //
            // NOTE: success and returndatasize checked at the end of the function
            mstore(0, input)
            success := staticcall(gas(), RESOLVE_ADDRESS, 0, 22, 0, 32)

            // Read result and clean higher-order bits, just in case.
            // If successful, this will be the actor id.
            id := and(MAX_U64, mload(0))
        }
        // Checking these here because internal functions don't have
        // a good way to return from inline assembly.
        //
        // But, it's very important we do check these. If the output
        // wasn't exactly what we expected, we assume there's no ID
        // address and return (false, 0).
        if (!success || returnDataSize() != 32) {
            return (false, 0);
        }
    }

    /**
     * @notice Replacement for Solidity's address.send and address.transfer
     * This sends _amount to _recipient, forwarding all available gas and
     * reverting if there are any errors.
     *
     * If _recpient is an Eth address, this works the way you'd
     * expect the EVM to work.
     *
     * If _recpient is an ID address, this works if:
     * 1. The ID corresponds to an Eth EOA address      (EthAccount actor)
     * 2. The ID corresponds to an Eth contract address (EVM actor)
     * 3. The ID corresponds to a BLS/SECPK address     (Account actor)
     *
     * If _recpient is some other Filecoin-native actor, this will revert.
     */
    function sendValue(address payable _recipient, uint _amount) internal {
        if (address(this).balance < _amount) revert InsufficientFunds();

        (bool success, ) = _recipient.call{value: _amount}("");
        if (!success) revert CallFailed();
    }

    function returnDataSize() private pure returns (uint size) {
        /// @solidity memory-safe-assembly
        assembly {
            size := returndatasize()
        }
    }
}
