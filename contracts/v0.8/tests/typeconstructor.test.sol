// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import {Test} from "forge-std/Test.sol";
import {CommonTypes} from "contracts/v0.8/types/CommonTypes.sol";
import {TypeConstructor} from "contracts/v0.8/utils/TypeConstructor.sol";

contract TypeConstructorTest is Test {
    
    error InvalidFormat();
    error InvalidLength();
    error InvalidBase58Character();

    // UNIT TESTS
    function test_dealLabelFromBytes() external {
        bytes memory data = bytes("test");

        CommonTypes.DealLabel memory label = TypeConstructor.dealLabelFromBytes(data);

        assertEq(label.data, data);
        assertEq(label.isString, false);
    }

    function test_dealLabelFromString() external {
        string memory data = "test";

        CommonTypes.DealLabel memory label = TypeConstructor.dealLabelFromString(data);

        assertEq(label.data, bytes(data));
        assertEq(label.isString, true);
    }

    function test_cidFromStringV0() external {
        string memory cid = "QmY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuPU";
        bytes memory cidBytes = hex"12209139839E65FABEA9EFD230898AD8B574509147E48D7C1E87A33D6DA70FD2EFBF";

        CommonTypes.Cid memory cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmPK1s3pNYLi9ERiq3BDxKa4XosgWwFRQUydHUtz4YgpqB";
        cidBytes = hex"12200E7071C59DF3B9454D1D18A15270AA36D54F89606A576DC621757AFD44AD1D2E";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmbWqxBEKC3P8tqsKc98xmWNzrzDtRLMiMPL8wBuTGsMnR";
        cidBytes = hex"1220C3C4733EC8AFFD06CF9E9FF50FFC6BCD2EC85A6170004BB709669C31DE94391A";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);

        cid = "QmdfTbBqBPQ7VNxZEYEj14VmRuZBkqFbiwReogJgS1zR1n";
        cidBytes = hex"1220E3B0C44298FC1C149AFBF4C8996FB92427AE41E4649B934CA495991B7852B855";

        cidBytesDecoded = TypeConstructor.cidFromString(cid);
        assertEq(cidBytesDecoded.data, cidBytes);
    }

    function test_cidFromStringV0WhenFirstCharIsInvalid() external {
        string memory cid = "qmY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuPU";

        vm.expectRevert(InvalidFormat.selector);
        TypeConstructor.cidFromString(cid);
    }

    function test_cidFromStringV0WhenSecondCharIsInvalid() external {
        string memory cid = "QMY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuPU";

        vm.expectRevert(InvalidFormat.selector);
        TypeConstructor.cidFromString(cid);
    }

    function test_cidFromStringV0WhenLengthIsInvalid() external {
        string memory cid = "QmY7Yh4UquoXHLPFo2XbhXkhBvFoPwmQUSa92pxnxjQuP";

        vm.expectRevert(InvalidFormat.selector);
        TypeConstructor.cidFromString(cid);
    }

    function test_decodeBase58Char() external {
        string memory validCharacters = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
        bytes memory validCharactersBytes = bytes(validCharacters);

        uint256 length = validCharactersBytes.length;
        uint8 decodedValue;
        for (uint256 i; i < length; i++) {
            decodedValue = TypeConstructor.decodeBase58Char(validCharactersBytes[i]);
            assertEq(decodedValue, uint8(i));
        }
    }

    function test_decodeBase58CharWhenInputIsInvalid() external {
        vm.expectRevert(InvalidBase58Character.selector);
        TypeConstructor.decodeBase58Char(bytes1("0"));

        vm.expectRevert(InvalidBase58Character.selector);
        TypeConstructor.decodeBase58Char(bytes1("I"));

        vm.expectRevert(InvalidBase58Character.selector);
        TypeConstructor.decodeBase58Char(bytes1("L"));

        vm.expectRevert(InvalidBase58Character.selector);
        TypeConstructor.decodeBase58Char(bytes1("O"));

        vm.expectRevert(InvalidBase58Character.selector);
        TypeConstructor.decodeBase58Char(bytes1("l"));
    }

    // FUZZING TESTS
    function testFuzz_dealLabelFromString(string memory data) external {
        vm.assume(bytes(data).length <= 32);

        CommonTypes.DealLabel memory label = TypeConstructor.dealLabelFromString(data);

        assertEq(label.data, bytes(data));
        assertEq(label.isString, true);
    }

    function testFuzz_dealLabelFromStringWhenLengthIsInvalid(string memory data) external {
        vm.assume(bytes(data).length > 32);

        vm.expectRevert(InvalidLength.selector);
        TypeConstructor.dealLabelFromString(data);
    }

    function testFuzz_dealLabelFromBytes(bytes memory data) external {
        vm.assume(data.length <= 32);

        CommonTypes.DealLabel memory label = TypeConstructor.dealLabelFromBytes(data);

        assertEq(label.data, data);
        assertEq(label.isString, false);
    }

    function testFuzz_dealLabelFromBytesWhenLengthIsInvalid(bytes memory data) external {
        vm.assume(data.length > 32);

        vm.expectRevert(InvalidLength.selector);
        TypeConstructor.dealLabelFromBytes(data);
    }

    // TODO: fix this test if possible, make it only use valid characters
    function testFuzz_cidFromStringV0(string memory chars) external {
        vm.assume(bytes(chars).length == 44);

        string memory cid = string.concat("Qm", chars);
        bytes memory cidBytes = TypeConstructor.cidFromString(cid).data;

        bytes2 prefix;
        assembly {
            prefix := shl(240, mload(add(cidBytes, 0x20)))
        }
        assertEq(prefix, hex"1220");
    }

    function testFuzz_cidFromStringV0WhenFirstCharIsInvalid(bytes1 firstChar, string memory chars) external {
        vm.assume(firstChar != hex"51" && bytes(chars).length == 44);
        string memory cid = string.concat(string(abi.encodePacked(firstChar)), "m", chars);

        vm.expectRevert(InvalidFormat.selector);
        TypeConstructor.cidFromString(cid);
    }

    function testFuzz_cidFromStringV0WhenSecondCharIsInvalid(bytes1 secondChar, string memory chars) external {
        vm.assume(secondChar != hex"6d" && bytes(chars).length == 44);
        string memory cid = string.concat("Q", string(abi.encodePacked(secondChar)), chars);

        vm.expectRevert(InvalidFormat.selector);
        TypeConstructor.cidFromString(cid);
    }

    function testFuzz_cidFromStringV0WhenLengthIsInvalid(string memory chars) external {
        vm.assume(bytes(chars).length != 44);
        string memory cid = string.concat("Qm", chars);

        vm.expectRevert(InvalidFormat.selector);
        TypeConstructor.cidFromString(cid);
    }
    // redundant? , unit covers all cases
    function testFuzz_decodeBase58Char(uint8 index) external {
        string memory validCharacters = "123456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnopqrstuvwxyz";
        bytes memory validCharactersBytes = bytes(validCharacters);

        vm.assume(index < validCharactersBytes.length);

        uint8 decodedValue = TypeConstructor.decodeBase58Char(validCharactersBytes[index]);

        assertEq(decodedValue, uint8(index));
    }

    function testFuzz_decodeBase58CharWhenCharacterIsInvalid(uint8 char) external {
        vm.assume(
            char < 49 || (char > 57 && char < 65) || (char == 73 || char == 79 || char == 108)
                || (char > 90 && char < 97) || (char > 122)
        );

        vm.expectRevert(InvalidBase58Character.selector);
        TypeConstructor.decodeBase58Char(bytes1(char));
    }
}
