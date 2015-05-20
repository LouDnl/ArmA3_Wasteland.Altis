//	@file Name: teargas.sqf
//	@file Author: Mokey
//	@file Description: Toxic Gas addon for A3W
//	@web: http://www.fractured-gaming.com
//	@Special Thanks to Pitoucc, CREAMPIE, and Izzer


private ["_damageRadius"];

_gasMask = ["H_CrewHelmetHeli_B"]; // define the gasmasks here 


setNoGasStatus={
    "dynamicBlur" ppEffectEnable true;                  // enables ppeffect
    "dynamicBlur" ppEffectAdjust [0];                   // enables normal vision
    "dynamicBlur" ppEffectCommit 10;                    // time it takes to go back to normal vision
    resetCamShake;                                      // resets the shake
    20 fadeSound 1;                                     // fades the sound back to normal	
};

setGasStatus = { 
    "dynamicBlur" ppEffectEnable true;              	// enables ppeffect
    "dynamicBlur" ppEffectAdjust [15];             	  	// intensity of blur
	"dynamicBlur" ppEffectCommit 5;                 	// time till vision is fully blurred
	enableCamShake true;                             	// enables camera shake
	addCamShake [10, 45, 10];                        	// sets shakevalues
//	player setFatigue 0;                            	// sets the fatigue to 100% - disabled this on A3W
	5 fadeSound 0.1;                                 	// fades the sound to 10% in 5 seconds
};

gasDamage = {
switch (true) do										// Check if condition is met
	{
	case(_damageRadius < 2.5):							// 2.5m
		{player setDamage (damage player + 0.15);     	// 15 damage per tick
		  sleep 1;										// 1s Timer damage is assigned "seconds"
		};
  
    case(_damageRadius < 5 && _damageRadius > 2.5):		// 2.5 - 5m
		{player setDamage (damage player + 0.10);     	// 10 damage per tick
		 sleep 2;										// 2s Timer damage is assigned "seconds"
		};
		
    case(_damageRadius < 10 && _damageRadius > 5):		// 5- 10m
		 {player setDamage (damage player + 0.05);     	// 5 damage per tick
		  sleep 3;									    // 3s Timer damage is assigned "seconds"
		 };
	};
};

While{true} do{											// Check if condition is met
		call setNoGasStatus;
	waituntil{
		_smokeShell = nearestObject [getPosATL player, "SmokeShellYellow"];
		_curPlayerInvulnState = player getVariable ["isAdminInvulnerable", false];
		_damageRadius = (_smokeShell distance player);
	    _damageRadius < 10 && velocity _smokeShell isEqualTo [ 0, 0, 0 ]
		&& !_curPlayerInvulnState
    };  	

if  !(headgear player in _gasMask) then  {		    	// This must be the nastiest piece of code ever ...
switch (true) do 
		{
	 case 	((vehicle player isKindOf "Tank_F") 
	 ||		(vehicle player isKindOf "Helicopter_Base_F") 
	 ||		(vehicle player isKindOf "MRAP_01_base_F") 
	 || 	(vehicle player isKindOf "MRAP_02_base_F") 
	 ||		(vehicle player isKindOf "MRAP_03_base_F") 
	 || 	(vehicle player isKindOf "Wheeled_APC_F")):
	 
	 {};
	
	 default
	  {	call setGasStatus;
		call gasDamage; 
	  }; 
		};
		  };
};