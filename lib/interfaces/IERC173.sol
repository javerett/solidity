// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "../util/Context.sol";

interface IERC173 {
	// -- EVENTS --

	/// @dev This emits when ownership of a contract changes.
	event OwnershipTransferred (
		address indexed previousOwner,
		address indexed newOwner
	);

	// -- MODIFIERS --

	modifier onlyOwner() virtual;

	// -- EXTERNAL FUNCTIONS --

	/// @notice Get the address of the owner
	/// @return The address of the owner.
	function owner() view external returns(address);

	/// @notice Set the address of the new owner of the contract
	/// @dev Set _newOwner to address(0) to renounce any ownership.
	/// @param _newOwner The address of the new owner of the contract
	function transferOwnership (
		address _newOwner
	) external;
}
