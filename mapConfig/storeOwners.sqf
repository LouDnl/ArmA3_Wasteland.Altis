// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 6, 240, []],
	["GenStore2", 6, 250, []],
	["GenStore3", 6, 45, []],
	["GenStore4", 0, 265, []],
	["GenStore5", 5, 350, []],
	["GenStore6", 5, -444, []],
	["GenStore7", 1, 270, []],
	["GenStore8", 3, 140, []],

	["GunStore1", 1, 0, []],
	["GunStore2", 1, 75, []],
	["GunStore3", 6, 135, []],
	["GunStore4", 1, 65, []],
	["GunStore5", 5, -488, []],
	["GunStore6", 1, 110, []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 1, 75, ["Planes"]], // Planes removed
	["VehStore2", 6, 45, ["Boats"]], // Planes removed
	["VehStore3", 4, 250, ["Planes","Boats"]], // Planes removed
	["VehStore4", 5, 155, ["Boats"]], // Planes removed
	["VehStore5", 0, 190, ["Planes"]],
	["VehStore6", 5, -261, ["Planes"]],
	["VehStore7", 1, 125, ["Planes","Boats"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_B_HeliPilotCoveralls"]]],
	["GenStore2", [["weapon", ""], ["uniform", "rhs_uniform_cu_ocp_1stcav"]]],
	["GenStore3", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["GenStore4", [["weapon", ""], ["uniform", "rhs_uniform_cu_ocp_1stcav"]]],
	["GenStore5", [["weapon", ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["GenStore6", [['weapon', ""], ["uniform", "rhs_uniform_FROG01_m81"]]],
	["GenStore7", [['weapon', ""], ["uniform", "U_B_HeliPilotCoveralls"]]],
	["GenStore8", [['weapon', ""], ["uniform", "U_B_HeliPilotCoveralls"]]],

	["GunStore1", [["weapon", "srifle_mas_m110"], ["uniform", "U_I_FullGhillie_sard"]]],
	["GunStore2", [["weapon", "srifle_mas_sr25"], ["uniform", "rhs_uniform_cu_ucp_82nd"]]],
	["GunStore3", [["weapon", "rhs_weap_ak74m_gp25"], ["uniform", "rhs_uniform_FROG01_wd"]]],
	["GunStore4", [["weapon", "arifle_Katiba_C_F"], ["uniform", "rhs_uniform_vdv_mflora"]]],
	["GunStore5", [["weapon", "rhs_weap_ak103_npz"], ["uniform", "U_C_Journalist"]]],
	["GunStore6", [["weapon", "arifle_mas_m4_m203c"], ["uniform", "rhs_uniform_cu_ocp_82nd"]]],

	["VehStore1", [["weapon", ""], ["uniform", "rhs_uniform_vdv_flora"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_I_CombatUniform"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_C_Driver_4"]]],
	["VehStore4", [["weapon", ""], ["uniform", "rhs_uniform_vdv_flora"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_I_CombatUniform"]]],
	["VehStore6", [["weapon", ""], ["uniform", "rhs_uniform_vdv_flora"]]],
	["VehStore7", [["weapon", ""], ["uniform", "U_C_Poloshirt_redwhite"]]]
];
