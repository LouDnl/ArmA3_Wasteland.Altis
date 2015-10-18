//	@file Version: 1.0
//	@file Name: getDefaultClothing.sqf
//	@file Author: AgentRev
//	@file Created: 22/12/2013 22:04

private ["_unit", "_item", "_side", "_isSniper", "_isDiver","_isMedic", "_isEngineer", "_defaultVest", "_result"];

_unit = _this select 0;
_item = _this select 1;

if (typeName _unit == "OBJECT") then
{
	_side = if (_unit == player) then { playerSide } else { side _unit };
	_unit = typeOf _unit;
}
else
{
	_side = _this select 2;
};


_defaultVest = "V_Rangemaster_Belt";

_isSniper = (["_sniper_", _unit] call fn_findString != -1);
_isDiver = (["_diver_", _unit] call fn_findString != -1);
_isMedic = (["_medic_", _unit] call fn_findString != -1);
_isEngineer = (["_engineer_", _unit] call fn_findString != -1);
_isInsurgent = (["_insurgent_", _unit] call fn_findString != -1);
_isSoldier = (["_soldier_", _unit] call fn_findString != -1);

_result = "";

switch (_side) do
{
	case BLUFOR: 
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_B_GhillieSuit" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_B_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherB" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isMedic):
			{
				if (_item == "uniform") then { _result = "U_B_CombatUniform_mcam" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_B_PilotCoveralls" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
			case (_isInsurgent):
			{
				if (_item == "uniform") then { _result = "U_B_PilotCoveralls" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
			case (_isSoldier):
			{
				if (_item == "uniform") then { _result = "U_OrestesBody" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
		};
		
		if (_item == "headgear") then { _result = "H_Bandanna_khk" };
	};
	case OPFOR:
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_O_GhillieSuit" };
				if (_item == "vest") then { _result = "V_HarnessO_gry"  };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_O_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIR" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isMedic):
			{
				if (_item == "uniform") then { _result = "U_O_CombatUniform_ocamo" };
				if (_item == "vest") then { _result = "V_HarnessO_gry" };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_O_PilotCoveralls" };
				if (_item == "vest") then { _result = "V_HarnessO_gry" };
			};
			case (_isInsurgent):
			{
				if (_item == "uniform") then { _result = "U_B_PilotCoveralls" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
			case (_isSoldier):
			{
				if (_item == "uniform") then { _result = "U_OrestesBody" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
		};
		
		if (_item == "headgear") then { _result = "H_Booniehat_mcamo" };
	};
	default
	{
		switch (true) do
		{
			case (_isSniper):
			{
				if (_item == "uniform") then { _result = "U_I_GhillieSuit" };
				if (_item == "vest") then { _result = "V_BandollierB_rgr" };
			};
			case (_isDiver):
			{
				if (_item == "uniform") then { _result = "U_I_Wetsuit" };
				if (_item == "vest") then { _result = "V_RebreatherIA" };
				if (_item == "goggles") then { _result = "G_Diving" };
			};
			case (_isMedic):
			{
				if (_item == "uniform") then { _result = "U_I_CombatUniform" };
				if (_item == "vest") then { _result = "V_BandollierB_rgr" };
			};
			case (_isEngineer):
			{
				if (_item == "uniform") then { _result = "U_I_pilotCoveralls" };
				if (_item == "vest") then { _result = "V_BandollierB_rgr" };
			};
			case (_isInsurgent):
			{
				if (_item == "uniform") then { _result = "U_B_PilotCoveralls" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
				case (_isSoldier):
			{
				if (_item == "uniform") then { _result = "U_OrestesBody" };
				if (_item == "vest") then { _result = "V_Chestrig_khk" };
			};
		};
		
//		if (_item == "headgear") then { _result = "H_Shemag_olive" };
	};
};

_result
