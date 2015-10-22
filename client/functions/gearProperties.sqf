// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: gearProperties.sqf
//	@file Author: AgentRev
//	@file Created: 08/10/2013 13:58

private ["_item", "_type", "_text", "_containerClass", "_currentCapacity", "_newCapacity", "_currentArmor", "_newArmor", "_diffCapacity", "_diffArmor", "_currentPassthrough", "_newPassthrough", "_diffPassthrough"];

_item = _this select 0;
_type = toLower (_this select 1);

_text = "";
_currentCapacity = 0;
_currentArmor = 0;
_currentPassthrough = 0;
_newCapacity = 0;
_newArmor = 0;
_newPassthrough = 0;

switch (_type) do
{
	case "uniform":
	{
		if (uniform player != "") then
		{
			_containerClass = getText (configFile >> "CfgWeapons" >> uniform player >> "ItemInfo" >> "containerClass");
			_currentCapacity = getNumber (configFile >> "CfgVehicles" >> _containerClass >> "maximumLoad");
		};

		_containerClass = getText (configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "containerClass");
		_newCapacity = getNumber (configFile >> "CfgVehicles" >> _containerClass >> "maximumLoad");
	};
	case "vest":
	{
		if (vest player != "") then
		{
			_containerClass = getText (configFile >> "CfgWeapons" >> vest player >> "ItemInfo" >> "containerClass");
			_currentCapacity = getNumber (configFile >> "CfgVehicles" >> _containerClass >> "maximumLoad");
			_currentArmor = getNumber (configFile >> "CfgWeapons" >> vest player >> "ItemInfo" >> "armor");
			_currentPassthrough = getNumber (configFile >> "CfgWeapons" >> vest player >> "ItemInfo" >> "passThrough");
		};

		_containerClass = getText (configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "containerClass");
		_newCapacity = getNumber (configFile >> "CfgVehicles" >> _containerClass >> "maximumLoad");
		_newArmor = getNumber (configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "armor");
		_newPassthrough = getNumber (configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "passThrough");
	};
	case "backpack":
	{
		if (backpack player != "") then
		{
			_currentCapacity = getNumber (configFile >> "CfgVehicles" >> backpack player >> "maximumLoad");
		};

		_newCapacity = getNumber (configFile >> "CfgVehicles" >> _item >> "maximumLoad");
	};
	case "headgear":
	{
		if (headgear player != "") then
		{
			_currentArmor = getNumber (configFile >> "CfgWeapons" >> headgear player >> "ItemInfo" >> "armor");
			_currentPassthrough = getNumber (configFile >> "CfgWeapons" >> headgear player >> "ItemInfo" >> "passThrough");
		};

		_newArmor = getNumber (configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "armor");
		_newPassthrough = getNumber (configFile >> "CfgWeapons" >> _item >> "ItemInfo" >> "passThrough");
	};
};

if (_type in ["uniform","vest","backpack"]) then
{
	if (isNil "_currentCapacity") then { _currentCapacity = 0 };
	if (isNil "_newCapacity") then { _newCapacity = 0 };

	_diffCapacity = _newCapacity - _currentCapacity;
	_text = "Capacity: ";

	switch (true) do
	{
		case (_diffCapacity > 0): { _text = _text + (str _newCapacity) + " (higher is better) (<t color='#00ff00'>+" + (str abs _diffCapacity) + "</t>)" };
		case (_diffCapacity < 0): { _text = _text + (str _newCapacity) + " (higher is better) (<t color='#ff0000'>-" + (str abs _diffCapacity) + "</t>)" };
		default                   { _text = _text + (str _newCapacity) + " (higher is better) (<t color='#a0a0a0'>+0</t>)" };
	};

	_text = _text + "<br/>";
};

if (_type in ["vest","headgear"]) then
{
	if (isNil "_currentArmor") then { _currentArmor = 0 };
	if (isNil "_newArmor") then { _newArmor = 0 };

	if (isNil "_currentPassthrough") then { _currentPassthrough = 1 };
	if (isNil "_newPassthrough") then { _newPassthrough = 1 };
	
	_diffArmor = _newArmor - _currentArmor;
	_text = _text + "Armor: ";

	switch (true) do
	{
		case (_diffArmor > 0): { _text = _text + (str _newArmor) + " (higher is better) (<t color='#00ff00'>+" + (str abs _diffArmor) + "</t>)" };
		case (_diffArmor < 0): { _text = _text + (str _newArmor) + " (higher is better) (<t color='#ff0000'>-" + (str abs _diffArmor) + "</t>)" };
		default                { _text = _text + (str _newArmor) + " (higher is better) (<t color='#a0a0a0'>+0</t>)" };
	};
		
	_text = _text + "<br/>";
		
	_diffPassthrough = _newPassthrough - _currentPassthrough;
	_text = _text + "Penetration: ";
	
	switch (true) do
	{
		case (_diffPassthrough > 0): { _text = _text + (str _newPassthrough) + " (lower is better) (<t color='#ff0000'>+" + (str abs _diffPassthrough) + "</t>)" };
		case (_diffPassthrough < 0): { _text = _text + (str _newPassthrough) + " (lower is better) (<t color='#00ff00'>-" + (str abs _diffPassthrough) + "</t>)" };
		default                      { _text = _text + (str _newPassthrough) + " (lower is better) (<t color='#a0a0a0'>+0</t>)" };
	};
};

_text