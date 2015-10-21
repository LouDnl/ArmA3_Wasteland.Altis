/****************************************
*****************************************

Module: Cleanup
Global-var-shortcut: pvpfw_cleanup_
Author: Conroy

You can "setVariable["pvpfw_cleanUp_keep",true]" on any object, to exempt it from the cleanup

*****************************************
****************************************/

private[
	"_nearEntities",
	"_ruinsCheck",
	"_delay",
	"_type",
	"_cleanUpInitTime",
	"_checkTypes",
	"_chemLightObjects",
	"_chemLightTime",
	"_pipeBombObjects",
	"_pipeBombTime",
	"_chemLightSetTime",
	"_pipeBombSetTime"
];

if(!isServer) exitWith{};

#include "config.sqf"

if (pvpfw_cleanup_cleanAbandonded) then{
	[] execVM "module_performance\module_cleanup\cleanAbandonded.sqf"; //starts the module to automatically clean up abandonded (empty) vehicles
};

_nearEntities = [];

// Function below is obsolete... all ruins are kindOf "Ruins_F"
/*
_ruinsCheck = {
	private["_array","_length","_newArray"];
	_array = toarray _this;
	_length = count _array;
	
	if (_length < 7) exitWith{false};
	
	_newArray = [];
	for "_i" from 7 to 1 step -1 do{
		_newArray set[count _newArray, _array select (_length - _i)];
	};
	
	"ruins_F" == toString _newArray
};
*/

#ifdef __pvpfw_cleanUp_cleanExtra
_checkTypes = "";
#else
_checkTypes = "All";
#endif

_chemLightObjects = [];
_chemLightTime = [];

_pipeBombObjects = [];
_pipeBombTime = [];

while {true} do{
	{
		_delay = 0.02;
		_type = typeOf _x;
		
		if (!isNull _x) then{
			switch(true)do{
				case(_x getVariable["pvpfw_cleanUp_keep",false]):{
					_delay = 0.01;
					// The objects variable indicates, that it should not be cleaned up
				};
			
				#ifdef __pvpfw_cleanUp_cleanExtra
				case(_type == ""):{
					_delay = 0.01;
					// Many objects in the mission will return an empty string as their type. We just skip them immediately.
				};
				#endif
				
				case(!alive _x):{
					_delay = 0.05;
					//_nearEntities resize 0;
					
					if (_x isKindOf "CAManBase") then{
						_cleanUpInitTime = _x getVariable ["pvpfw_cleanup_InitTime",0];
						if (_cleanUpInitTime == 0) then{
							_cleanUpInitTime = diag_tickTime;
							_x setVariable ["pvpfw_cleanup_InitTime",_cleanUpInitTime,false];
						};
						//delete the body if the time limit has been reached
						if (diag_tickTime > (_cleanUpInitTime + pvpfw_cleanUp_bodyTimer)) then{
						//	deleteVehicle _x;
						//	diag_log format["#PVPFW module_cleanup: deleting body. init = %1, current time = %2",_cleanUpInitTime,diag_tickTime];
						};
					}else{
						//get an array of all entities surrounding the wreck
						_nearEntities = (getPosATL _x) nearEntities [["CAManBase","Air","LandVehicle"],pvpfw_cleanUp_vehicleRadius];
						//remove vehicles without crew from the list of valid vehicles, that would prevent the cleanup
						{
							if (count crew _x == 0) then{
								_nearEntities set[_forEachIndex,objNull];
							};
						}forEach _nearEntities;
						_nearEntities = _nearEntities - [objNull];
						
						//if _nearEntities empty then initiate cleanup procedure
						if (count _nearEntities == 0) then{
							_cleanupInitTime = _x getVariable["pvpfw_cleanup_InitTime",0];
							if (_cleanupInitTime == 0) then{
								_x setVariable ["pvpfw_cleanup_InitTime",diag_tickTime,false];
							}else{
								if (diag_tickTime > (_cleanupInitTime + pvpfw_cleanUp_vehicleTimer)) then{
									deleteVehicle _x;
									diag_log format["#PVPFW module_cleanup: deleting vehicle. init = %1, current time = %2",_cleanUpInitTime,diag_tickTime];
								};
							};
						}else{
							_x setVariable ["pvpfw_cleanup_InitTime",0,false];
						};
					};
				};
				
				#ifdef __pvpfw_cleanUp_cleanWeaponHolders
				case(_type in ["GroundWeaponHolder","WeaponHolderSimulated"]):{
					_delay = 0.05;
					_nearEntities = (getPosATL _x) nearEntities [[""],pvpfw_cleanUp_weaponHolderRadius];
					if (count _nearEntities == 0) then{
						_cleanupInitTime = _x getVariable["pvpfw_cleanup_InitTime",0];
						
						if (_cleanupInitTime == 0) then{
							_x setVariable ["pvpfw_cleanup_InitTime",diag_tickTime,false];
						}else{
							if (diag_tickTime > (_cleanupInitTime + pvpfw_cleanUp_weaponHolderTimer)) then{
								deleteVehicle _x;
								diag_log format["#PVPFW module_cleanup: deleting GroundWeaponHolder. init = %1, current time = %2",_cleanUpInitTime,diag_tickTime];
							};
						};
					}else{
						_x setVariable ["pvpfw_cleanup_InitTime",0,false];
					};
				};
				#endif
				
				#ifdef __pvpfw_cleanUp_cleanRuins
				//case(_type call _ruinsCheck):{
				case(_x isKindOf "Ruins_F"):{
					_delay = 0.05;
					_nearEntities = (getPosATL _x) nearEntities [["CAManBase"],pvpfw_cleanUp_ruinRadius];
					if (count _nearEntities == 0) then{
						deleteVehicle _x;
						diag_log format["#PVPFW module_cleanup: deleting destroyed building. type = %1",_type];
					};
				};
				#endif
				
				#ifdef __pvpfw_cleanUp_cleanExtra
				case(_x isKindOf "SmokeShell"):{ //actually for chemlights, but they area child of the smokeShell class
					_delay = 0.03;
					
					_index = _chemLightObjects find _x;
					
					if (_index == -1) then{
						_chemLightObjects set[count _chemLightObjects,_x];
						_chemLightTime set[count _chemLightTime,diag_tickTime];
					}else{
						_chemLightSetTime = _chemLightTime select _index;
						if (diag_tickTime > (_chemLightSetTime + pvpfw_cleanUp_chemLightTimer)) then{
							deleteVehicle _x;
							diag_log format["#PVPFW module_cleanup: deleting chemlight"];
						};
					};
				};
				case(_x isKindOf "PipeBombBase" || _x isKindOf "ClaymoreDirectionalMine_Remote_Ammo"):{
					_delay = 0.05;
					
					_index = _pipeBombObjects find _x;
					
					if (_index == -1) then{
						_pipeBombObjects set[count _pipeBombObjects,_x];
						_pipeBombTime set[count _pipeBombTime,diag_tickTime];
					}else{
						_pipeBombSetTime = _pipeBombTime select _index;
						if (diag_tickTime > (_pipeBombSetTime + pvpfw_cleanUp_pipeBombTimer)) then{
							deleteVehicle _x;
							diag_log format["#PVPFW module_cleanup: deleting remotBomb"];
						};
					};
				};
				#endif
				
				#ifdef __pvpfw_cleanUp_customCondition
				case(_x call pvpfw_cleanUp_customCondition):{
					_x call pvpfw_cleanUp_customRemoveScript;
				};
				#endif
			};
		};
		sleep _delay;
	}forEach (allMissionObjects _checkTypes);
	
	#ifdef __pvpfw_cleanUp_cleanExtra
	//clean the chemlight array
	{
		if (isNull _x) then{
			_chemLightObjects set[_forEachIndex,objNull];
			_chemLightTime set[_forEachIndex,0];
		};
	}forEach _chemLightObjects;
	_chemLightObjects = _chemLightObjects - [objNull];
	_chemLightTime = _chemLightTime - [0];
	//clean the pipebomb array
	{
		if (isNull _x) then{
			_pipeBombObjects set[_forEachIndex,objNull];
			_pipeBombTime set[_forEachIndex,0];
		};
	}forEach _pipeBombObjects;
	_pipeBombObjects = _pipeBombObjects - [objNull];
	_pipeBombTime = _pipeBombTime - [0];
	#endif
	
	sleep 2;
};