// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: Door_unlockDoor.sqf
//	@file Author: LouD / Cael817 for original script
//	@file Description: Door script

private ["_key","_door","_doorFinder"];
_key = cursorTarget;
_doorFinder = (nearestObjects [_key, ["Land_Canal_Wall_10m_F"], 15]);
_door = _doorFinder select 0;

if (!isNil "_door" && {!isNull _door}) then 
{
	if (_key getVariable ["password", ""] == _door getVariable ["password", ""]) then 
	{		
		[[netId _door, true], "A3W_fnc_hideObjectGlobal", _door] call A3W_fnc_MP;
		hint "Your door is opened";
	}
	else 
	{
		hint "Your key pin is not the same as the door pin";
	};
} 
else 
{
	hint "No door found";
};