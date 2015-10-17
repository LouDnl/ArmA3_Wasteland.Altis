// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2015 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: setupBillBoard.sqf
//	@file Author: LouD

// For use in mission.sqm

//if (!isServer) exitWith {};
_this allowDamage false;
_this setObjectTextureGlobal [0,"mapconfig\img\bill1.jpg"];
_this setPos [getPos _this select 0, getPos _this select 1, -1];
_this setVectorUp [0,-0,0.5];
_this enableSimulationGlobal false;