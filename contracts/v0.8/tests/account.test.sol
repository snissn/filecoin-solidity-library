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
//
// THIS CODE WAS SECURITY REVIEWED BY KUDELSKI SECURITY, BUT NOT FORMALLY AUDITED

// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.17;

import "../types/AccountTypes.sol";
import "../types/CommonTypes.sol";
import "../AccountAPI.sol";
import "../Utils.sol";
import "../utils/Errors.sol";

/// @notice This file is meant to serve as a deployable contract of the account actor API, as the library by itself is not.
/// @notice It imports the library and create a callable method for each method in the library
/// @author Zondax AG
contract AccountApiTest {
    function authenticate_message(CommonTypes.FilActorId target, AccountTypes.AuthenticateMessageParams memory params) public view {
        int256 exit_code = AccountAPI.authenticateMessage(target, params);

        Errors.revertOnError(exit_code);
    }

    function universal_receiver_hook(CommonTypes.FilActorId target, CommonTypes.UniversalReceiverParams memory params) public {
        (int256 exit_code, ) = Utils.universalReceiverHook(target, params);

        Errors.revertOnError(exit_code);
    }
}
