// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupResupplyTruck.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

_this lock 2;
_this allowDamage false;
_this setVariable ["R3F_LOG_disabled", true, true];
_this setVariable ["A3W_Truck", true, true];
_this setVariable ["ownerName", "Resupply", true];
_this setAmmoCargo 0;
_this setFuelCargo 0;
_this setRepairCargo 0;

_marker = createMarker ["Resupply_Truck_" + netId _this, getPosATL _this];
_marker setMarkerShape "ICON";
_marker setMarkerType "n_maint";
_marker setMarkerText "Vehicle Resupply";
_marker setMarkerColor "ColorCivilian";
_marker setMarkerSize [0.5, 0.5];
_marker setMarkerDir 0;

_this spawn
{
	waitUntil {!isNil "A3W_serverSetupComplete"};

	#define RESUPPLY_DISTANCE (["Resupply_Distance", 30] call getPublicVar)
	#define STORE_VEHICLE_CONDITION "(vehicle _this != _this)"
	#define STORE_ACTION_CONDITION format ["(_this distance _target <= %1)", RESUPPLY_DISTANCE]
	#define SELL_VEH_CONTENTS_CONDITION "{!isNull objectFromNetId (player getVariable ['lastVehicleRidden', ''])}"

	_this addAction ["<img image='client\icons\repair.paa'/> Resupply", "client\functions\fn_resupplytruck.sqf", [], 50, true, true, "", STORE_VEHICLE_CONDITION + " && " + STORE_ACTION_CONDITION];
	_this addAction ["<img image='client\icons\store.paa'/> Repaint Vehicle", "addons\VehiclePainter\VehiclePainter_Check.sqf", [], 49, true, true, "", STORE_ACTION_CONDITION + " && " + SELL_VEH_CONTENTS_CONDITION];
	_this addAction ["<img image='client\icons\money.paa'/> Sell Vehicle Contents", "client\systems\selling\sellVehicleItems.sqf", [], 48, false, true, "", STORE_ACTION_CONDITION + " && " + SELL_VEH_CONTENTS_CONDITION];

	[_this] call vehicleSetup;
	_this enableSimulationGlobal false;
};
