// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//@file Version: 1.0
//@file Name: init.sqf
//@file Author: [404] Deadbeat / edited by LouD
//@file Created: 20/11/2012 05:19
diag_log format["Message %1",messageSystem];

_hint = messageSystem;
//hint _hint;

[
	_hint,
	[
		0,
		safeZoneY + 0.03,
		1,
		1
	],
	[10,10],
	8,
	1.5,
	0
] spawn BIS_fnc_textTiles;