//	@file Version: 1.0
//	@file Name: firstSpawn.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 28/12/2013 19:42

client_firstSpawn = true;

[] execVM "client\functions\welcomeMessage.sqf";

player addEventHandler ["Take",
{
	_vehicle = _this select 1;
	
	if (_vehicle isKindOf "LandVehicle" && {!(_vehicle getVariable ["itemTakenFromVehicle", false])}) then
	{
		_vehicle setVariable ["itemTakenFromVehicle", true, true];
	};
}];

player addEventHandler ["Put",
{
	_vehicle = _this select 1;
	
	if (_vehicle getVariable ["A3W_storeSellBox", false] && isNil {_vehicle getVariable "A3W_storeSellBox_track"}) then
	{
		_vehicle setVariable ["A3W_storeSellBox_track", _vehicle spawn
		{
			_vehicle = _this;
			
			waitUntil {sleep 1; !alive player || player distance _vehicle > 25};
			
			_sellScript = [_vehicle, player, -1, [true, true]] execVM "client\systems\selling\sellCrateItems.sqf";
			waitUntil {sleep 0.1; scriptDone _sellScript};
			
			if (!alive player) then
			{
				sleep 0.5;
				
				if (player getVariable ["cmoney", 0] > 0) then
				{
					_m = createVehicle ["Land_Money_F", getPosATL player, [], 0.5, "CAN_COLLIDE"];
					_m setVariable ["cmoney", player getVariable "cmoney", true];
					_m setVariable ["owner", "world", true];
					player setVariable ["cmoney", 0, true];
				};
			};
			
			_vehicle setVariable ["A3W_storeSellBox_track", nil];
		}];
	};
}];

player addEventHandler ["WeaponDisassembled",
{
	_this spawn
	{
		_unit = _this select 0;
		_bag1 = _this select 1;
		_bag2 = _this select 2;

		_currBag = unitBackpack _unit;

		titleText ['You are not allowed to disassemble static weapons.\nUse the "Move" option instead.', "PLAIN DOWN"];

		_this spawn
		{
			_bag1 = _this select 1;
			_bag2 = _this select 2;

			_bag1Cont = objNull;
			_bag2Cont = objNull;

			{
				if (_bag1 in everyBackpack _x) then { _bag1Cont = _x };
				if (_bag2 in everyBackpack _x) then { _bag2Cont = _x };
			} forEach nearestObjects [player, ["GroundWeaponHolder"], 10];

			_bag1Cont hideObjectGlobal true;
			_bag2Cont hideObjectGlobal true;
		};

		_unit action ["TakeBag", _bag1];

		if (isNull _currBag) then
		{
			_time = time;
			waitUntil {unitBackpack _unit == _bag1 || time - _time > 3};
		};

		_unit action ["Assemble", _bag2];

		if (!isNull _currBag) then { _unit action ["TakeBag", _currBag] };
	};
}];

player addEventHandler ["InventoryOpened",
{
	_obj = _this select 1;
	if (!simulationEnabled _obj) then { _obj enableSimulation true };
	_obj setVariable ["inventoryIsOpen", true];
}];

player addEventHandler ["InventoryClosed",
{
	_obj = _this select 1;
	_obj setVariable ["inventoryIsOpen", nil];
}];

// Manual GetIn/GetOut check because BIS is too lazy to implement GetInMan/GetOutMan, among a LOT of other things
[] spawn
{
	_lastVeh = vehicle player;

	while {true} do
	{
		_currVeh = vehicle player;

		if (_lastVeh != _currVeh) then
		{
			if (_currVeh != player) then
			{
				[_currVeh] call getInVehicle;
			}
			else
			{
				[_lastVeh] call getOutVehicle;
			};
		};

		_lastVeh = _currVeh;
		sleep 0.25;
	};
};

player addEventHandler ["HandleDamage", unitHandleDamage];

if (["A3W_combatAbortDelay", 0] call getPublicVar > 0) then
{
	player addEventHandler ["Fired",
	{
		// Remove remote explosives if within 100m of a store
		if (_this select 1 == "Put") then
		{
			_ammo = _this select 4;

			if ({_ammo isKindOf _x} count ["PipeBombBase", "ClaymoreDirectionalMine_Remote_Ammo"] > 0) then
			{
				_mag = _this select 5;
				_bomb = _this select 6;
				_minDist = ["A3W_remoteBombStoreRadius", 100] call getPublicVar;

				{
					if (_x getVariable ["storeNPC_setupComplete", false] && {_bomb distance _x < _minDist}) exitWith
					{
						deleteVehicle _bomb;
						player addMagazine _mag;
						playSound "FD_CP_Not_Clear_F";
						titleText [format ["You are not allowed to place remote explosives within %1m of a store.\nThe explosive has been re-added to your inventory.", _minDist], "PLAIN DOWN", 0.5];
					};
				} forEach entities "CAManBase";
			};
		};
	}];

	player addEventHandler ["FiredNear",
	{
		// Prevent aborting if event is not for placing an explosive
		if (_this select 3 != "Put") then {
			combatTimestamp = diag_tickTime;
		};
	}];

	player addEventHandler ["Hit",
	{
		_source = effectiveCommander (_this select 1);
		if (!isNull _source && _source != player) then {
			combatTimestamp = diag_tickTime;
		};
	}];
};

_startTime = diag_tickTime;
waitUntil {sleep 1; diag_tickTime - _startTime >= 180};

if (playerSide in [BLUFOR,OPFOR]) then
{
	if ({_x select 0 == getPlayerUID player} count pvar_teamSwitchList == 0) then
	{
		pvar_teamSwitchList pushBack [getPlayerUID player, playerSide];
		publicVariable "pvar_teamSwitchList";
		
		_side = switch (playerSide) do
		{
			case BLUFOR: { "BLUFOR" };
			case OPFOR:  { "OPFOR" };
			default      { "" };
		};
		
		titleText [format["You have been locked to %1",_side],"PLAIN",0];
	};
};