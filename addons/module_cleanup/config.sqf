/*
*	The module_cleanUp configuration file.
*	You can change the variables below to whatever suits your mission best.
*
*	The radius is specified meters.
*	Timers are specified in seconds.
*/


///////////////////////////////
// Clean abandonded vehicles //
///////////////////////////////
pvpfw_cleanup_cleanAbandonded = false; // true or false, depending on wether you want abandoned vehicles to be deleted
pvpfw_cleanup_abandonedFromFaction = ["BLU_F","OPF_F","IND_F"]; // Vehicles from these factions will be cleaned up
pvpfw_cleanUp_abandonRadius = 200; // If no unit is closer than the specified distance, the removal countdown will start
pvpfw_cleanup_abandondTimer = 180; // The vehicle will be removed after the specified time
pvpfw_cleanUp_dontCleanUpAround = ["respawn_west","respawn_east","respawn_civilian","respawn_vehicle_guerrila"]; //do not clean abandoned vehicles around these markers
pvpfw_cleanUp_dontCleanUpAroundDistance = 500; // Dont clean if the vehicle is in this range of one of the above markers.

//////////////////////////////
// Clean destroyed vehicles //
//////////////////////////////
pvpfw_cleanUp_vehicleRadius = 10; // Destroyed vehicles cleanup timer will start if no unit is closer than this
pvpfw_cleanUp_vehicleTimer = 300;

//////////////////
// Clean bodies //
//////////////////
pvpfw_cleanUp_bodyTimer = 600; // Bodies will be removed after the specified amount of seconds

/////////////////////////////////
//     Clean weaponholders     //
// weapons/magazines on ground //
/////////////////////////////////
#define __pvpfw_cleanUp_cleanWeaponHolders //comment out this line if you dont want weaponHolders to be cleaned up
pvpfw_cleanUp_weaponHolderRadius = 10; // The weaponholders cleanup countdown will start if no unit is closer than this
pvpfw_cleanUp_weaponHolderTimer = 300; // Weaponholders will be deleted after this time

///////////////////////////////
// Clean destroyed buildings //
///////////////////////////////
#define __pvpfw_cleanUp_cleanRuins //comment out this line if you dont want destroyed buildings to be cleaned up
pvpfw_cleanUp_ruinRadius = 50; // Destroyed Buildings will be deleted if no entity is in the specified range around them

// Advanced
//#define __pvpfw_cleanUp_cleanExtra //comment out this line if you dont need the objects below to be checked
pvpfw_cleanUp_chemLightTimer = 300; //effectively overrides the max "timeToLive" for the chemlight ammo object which is 900 seconds by default
pvpfw_cleanUp_pipeBombTimer = 1800; //effectively sets a "timeToLive" limit on all explosives, that can be triggered remotely

//////////////////////
// Custom condition //
//////////////////////

//#define __pvpfw_cleanUp_customCondition //comment out this line if you dont need a check for a custom condition (which is very likely)

// Define your custom condition.
// The object will be passed to this function, which must then either return true or false

pvpfw_cleanUp_customCondition = {
	private["_object","_return"];
	_object = _this;
	_return = false;
	
	// example code, that would return true for all objects, that are vehicles
	if (_object in vehicles) then{
		_return = true;
	};
	
	_return
};

// Define your custom removal script.
// This is what happens, when the custom condition returned true.

pvpfw_cleanUp_customRemoveScript = {
	private["_object"];
	_object = _this;
	
	deleteVehicle _object;
	diag_log format["#PVPFW module_cleanup: deleting object with custom condition %1",typeOf _object];
};