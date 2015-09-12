// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

// empty name = name is extracted from class config

pistolArray = compileFinal str
[
	// Handguns
	["", "hgun_mas_acp_F", 125],
	["", "hgun_mas_bhp_F", 125],
	["", "hgun_mas_glock_F", 125],
	["", "hgun_mas_p226_F", 125],
	["", "hgun_mas_glocksf_F", 125],
	["", "hgun_mas_grach_F", 125],
	["", "hgun_mas_m9_F", 125],
	["", "hgun_mas_mak_F", 125],
	["", "hgun_mas_usp_F", 125],
	["", "hgun_mas_usp_l_F", 125],
	
	// Pistol SMG's
	["", "hgun_mas_sa61_F", 250],
	["", "hgun_mas_mp7p_F", 250],
	["", "hgun_mas_uzi_F", 250]
];

smgArray = compileFinal str
[
	// SMG
	["", "arifle_mas_mp5", 350],
	["", "arifle_mas_mp5_d", 350],
	["", "arifle_mas_mp5_v", 350],
	["", "arifle_mas_mp5sd", 400],
	["", "hgun_mas_mp7_F", 450],
	["", "arifle_mas_aks74u", 500],
	["", "arifle_mas_aks74u_c", 500],
	["", "arifle_mas_asval", 550],
	["", "arifle_mas_bizon", 550],
	
	// Shotguns
	["", "arifle_mas_m1014", 850],
	["", "arifle_mas_saiga", 850],
	["", "arifle_mas_aa12", 1150],
	
	// Grenade Launcher
	["", "arifle_mas_m79", 1250]
];

rifleArray = compileFinal str
[
	// Rifles
	["", "arifle_mas_lee", 125],

	// Assault rifles
	["", "arifle_mas_m14", 125],
	["", "srifle_mas_ebr", 125],
	["", "arifle_mas_ak12_sf", 125],
	["", "arifle_mas_ak12_sf_gl", 125],
	["", "arifle_mas_ak74", 125],
	["", "arifle_mas_ak74_gl", 125],
	["", "arifle_mas_ak_74m", 125],
	["", "arifle_mas_ak_74m_c", 125],
	["", "arifle_mas_ak_74m_gl", 125],
	["", "arifle_mas_ak_74m_gl_c", 125],
	["", "arifle_mas_ak_74m_sf", 125],
	["", "arifle_mas_ak_74m_sf_c", 125],
	["", "arifle_mas_ak_74m_sf_gl", 125],
	["", "arifle_mas_ak_74m_sf_gl_c", 125],
	["", "arifle_mas_akm", 125],
	["", "arifle_mas_akm_gl", 125],
	["", "arifle_mas_akms", 125],
	["", "arifle_mas_akms_c", 125],
	["", "arifle_mas_akms_gl", 125],
	["", "arifle_mas_akms_gl_c", 125],
	["", "arifle_mas_aks74", 125],
	["", "arifle_mas_aks74_gl", 125],
	["", "arifle_mas_aks_74_sf", 125],
	["", "arifle_mas_aks_74_sf_gl", 125],
	["", "arifle_mas_arx", 125],
	["", "arifle_mas_arx_gl", 125],
	["", "arifle_mas_arx_l", 125],
	["", "arifle_mas_arx_l_gl", 125],
	["", "arifle_mas_mp40", 125],
	["", "arifle_mas_sten", 125],
	["", "arifle_mas_fal", 125],
	["", "arifle_mas_fal_m203", 125],
	["", "arifle_mas_g3", 125],
	["", "arifle_mas_g36c", 125],
	["", "arifle_mas_g3_m203", 125],
	["", "arifle_mas_g3s", 125],
	["", "arifle_mas_g3s_m203", 125],
	["", "arifle_mas_hk416", 125],
	["", "arifle_mas_hk416_d", 125],
	["", "arifle_mas_hk416_v", 125],
	["", "arifle_mas_hk416_gl", 125],
	["", "arifle_mas_hk416_gl_d", 125],
	["", "arifle_mas_hk416_gl_v", 125],
	["", "arifle_mas_hk416_m203", 125],
	["", "arifle_mas_hk416_m203_d", 125],
	["", "arifle_mas_hk416_m203_v", 125],
	["", "arifle_mas_hk416_m203c", 125],
	["", "arifle_mas_hk416_m203c_d", 125],
	["", "arifle_mas_hk416_m203c_v", 125],
	["", "arifle_mas_hk416c", 125],
	["", "arifle_mas_hk416c_d", 125],
	["", "arifle_mas_hk416c_v", 125],
	["", "arifle_mas_hk417_m203c", 125],
	["", "arifle_mas_hk417_m203c_d", 125],
	["", "arifle_mas_hk417_m203c_v", 125],
	["", "arifle_mas_hk417c", 125],
	["", "arifle_mas_hk417c_d", 125],
	["", "arifle_mas_hk417c_v", 125],
	["", "arifle_mas_l119", 125],
	["", "arifle_mas_l119_d", 125],
	["", "arifle_mas_l119_gl", 125],
	["", "arifle_mas_l119_gl_d", 125],
	["", "arifle_mas_l119_gl_v", 125],
	["", "arifle_mas_l119_m203", 125],
	["", "arifle_mas_l119_m203_d", 125],
	["", "arifle_mas_l119_m203_v", 125],
	["", "arifle_mas_l119_v", 125],
	["", "arifle_mas_l119c", 125],
	["", "arifle_mas_l119c_d", 125],
	["", "arifle_mas_l119c_v", 125],
	["", "arifle_mas_m16", 125],
	["", "arifle_mas_m16_gl", 125],
	["", "arifle_mas_m27", 125],
	["", "arifle_mas_m27_d", 125],
	["", "arifle_mas_m27_v", 125],
	["", "arifle_mas_m27m", 125],
	["", "arifle_mas_m27m_d", 125],
	["", "arifle_mas_m27m_v", 125],
	["", "arifle_mas_m4", 125],
	["", "arifle_mas_m4_d", 125],
	["", "arifle_mas_m4_gl", 125],
	["", "arifle_mas_m4_gl_d", 125],
	["", "arifle_mas_m4_gl_v", 125],
	["", "arifle_mas_m4_m203", 125],
	["", "arifle_mas_m4_m203_d", 125],
	["", "arifle_mas_m4_m203_v", 125],
	["", "arifle_mas_m4_m203c", 125],
	["", "arifle_mas_m4_m203c_d", 125],
	["", "arifle_mas_m4_m203c_v", 125],
	["", "arifle_mas_m4_v", 125],
	["", "arifle_mas_m4c", 125],
	["", "arifle_mas_m4c_d", 125],
	["", "arifle_mas_m4c_v", 125],
	["", "arifle_mas_m4vlt", 125],
	["", "arifle_mas_m70", 125],
	["", "arifle_mas_m70_gl", 125],
	["", "arifle_mas_m70ab", 125],
	["", "arifle_mas_m70ab_gl", 125],
	["", "arifle_mas_mk16", 125],
	["", "arifle_mas_mk16_gl", 125],
	["", "arifle_mas_mk16_l", 125],
	["", "arifle_mas_mk16_l_gl", 125],
	["", "arifle_mas_mk17", 125],
	["", "arifle_mas_mk17_gl", 125],
	
	// Marksman rifles
	["", "srifle_mas_hk417", 125],
	["", "srifle_mas_hk417_d", 125],
	["", "srifle_mas_hk417_v", 125],
	["", "srifle_mas_mk17s", 125],
	["", "srifle_mas_mk17s_h", 125],
	["", "srifle_mas_mk17s_sd", 125],
	["", "srifle_mas_sr25", 125],
	["", "srifle_mas_sr25_d", 125],
	["", "srifle_mas_sr25_d_h", 125],
	["", "srifle_mas_sr25_d_sd", 125],
	["", "srifle_mas_sr25_h", 125],
	["", "srifle_mas_sr25_sd", 125],
	["", "srifle_mas_sr25_v", 125],
	["", "srifle_mas_sr25_v_h", 125],
	["", "srifle_mas_sr25_v_sd", 125],
	["", "srifle_mas_m110", 125],
	["", "srifle_mas_m110_h", 125],
	["", "srifle_mas_m110_sd", 125],
	
	// Sniper rifles
	["", "srifle_mas_vss", 125], // 39mm
	["", "srifle_mas_vss_h", 125],
	["", "srifle_mas_m24", 125], // 51mm
	["", "srifle_mas_m24_d", 125],
	["", "srifle_mas_m24_v", 125],
	["", "srifle_mas_m91", 125], // 54mm
	["", "srifle_mas_m91_l", 125],
	["", "srifle_mas_svd", 125], // 54mm
	["", "srifle_mas_svd_l", 125],
	["", "srifle_mas_lrr", 125], // .338
	["", "srifle_mas_m107", 125], // 99m
	["", "srifle_mas_m107_d", 125],
	["", "srifle_mas_m107_v", 125],
	["", "srifle_mas_ksvk", 125], // 108mm
	["", "srifle_mas_ksvk_c", 125]
];

lmgArray = compileFinal str
[
	["", "LMG_mas_M240_F", 125],
	["", "LMG_mas_M249_F", 125],
	["", "LMG_mas_M249_F_d", 125],
	["", "LMG_mas_M249_F_v", 125],
	["", "LMG_mas_M249a_F", 125],
	["", "LMG_mas_M60_F", 125],
	["", "LMG_mas_Mk200_F", 125],
	["", "LMG_mas_Mk48_F", 125],
	["", "LMG_mas_Mk48_F_d", 125],
	["", "LMG_mas_Mk48_F_v", 125],
	["", "LMG_mas_m72_F", 125],
	["", "LMG_mas_mg3_F", 125],
	["", "LMG_mas_pkm_F", 125],
	["", "LMG_mas_pech_F", 125],
	["", "LMG_mas_rpk_F", 125]
];

launcherArray = compileFinal str
[
	["", "mas_launch_LAW_F", 400],
	["", "mas_launch_M136_F", 400],
	["", "mas_launch_Metis_F", 400],
	["", "mas_launch_NLAW_F", 400],
	["", "mas_launch_RPG18_F", 400],
	["", "mas_launch_RPG7_F", 400],
	["", "mas_launch_TitanS_F", 400],
	["", "mas_launch_maaws_F", 400],
	["", "mas_launch_pzf60_F", 400],
	["", "mas_launch_smaw_F", 400],
	["", "mas_launch_Stinger_F", 400],
	["", "mas_launch_Strela_F", 400]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	["Mk30 HMG .50 Low tripod (NATO)", "B_HMG_01_F", 3000],
	["Mk30 HMG .50 Low tripod (CSAT)", "O_HMG_01_F", 3000],
	["Mk30 HMG .50 Low tripod (AAF)", "I_HMG_01_F", 3000],
	["Mk30 HMG .50 High tripod (NATO)", "B_HMG_01_high_F", 4000],
	["Mk30 HMG .50 High tripod (CSAT)", "O_HMG_01_high_F", 4000],
	["Mk30 HMG .50 High tripod (AAF)", "I_HMG_01_high_F", 4000],
	["Mk32 GMG 20mm Low tripod (NATO)", "B_GMG_01_F", 6000],
	["Mk32 GMG 20mm Low tripod (CSAT)", "O_GMG_01_F", 6000],
	["Mk32 GMG 20mm Low tripod (AAF)", "I_GMG_01_F", 6000],
	["Mk32 GMG 20mm High tripod (NATO)", "B_GMG_01_high_F", 7000],
	["Mk32 GMG 20mm High tripod (CSAT)", "O_GMG_01_high_F", 7000],
	["Mk32 GMG 20mm High tripod (AAF)", "I_GMG_01_high_F", 7000]
];

throwputArray = compileFinal str
[
	//["RGD-5", "rhs_mag_rgd5", 100],
	["", "rhs_mag_rdg2_white", 50],
	["", "rhs_mag_rdg2_black", 50],
	["", "rhs_mag_nspn_yellow", 50],
	["", "rhs_mag_nspn_red", 50],
	["", "rhs_mag_nspn_green", 50],
	["", "rhs_mag_nspd", 50],
	
	["", "rhs_mag_mk3a2", 100],
	["", "rhs_mag_mk84", 100],
	["", "rhs_mag_an_m14_th3", 100],
	["", "rhs_mag_m7a3_cs", 100],
	["", "rhs_mag_an_m8hc", 100],
	["", "rhs_mag_fakel", 100],
	["", "rhs_mag_fakels", 100],
	["", "rhs_mag_zarya2", 100],
	//["", "rhs_mag_plamyam", 100],
	//["", "rhs_mine_pmn2", 300],
	["", "rhs_mine_tm62m", 350],
	["", "rhs_mag_m67", 100],
	//["", "rhs_ammo_m84", 100],
	//["", "rhs_mine_M19_ammo", 300],

	["Smoke Grenade (White)", "SmokeShell", 50],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	["Smoke Grenade (Red)", "SmokeShellRed", 50],
	["Toxic Gas Grenade", "SmokeShellYellow", 750],
	["Mini Grenade", "MiniGrenade", 50],
	["Frag Grenade", "HandGrenade", 100],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	["AT Mine", "ATMine_Range_Mag", 400],
	["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500],
	["Small IED (Urban)", "IEDUrbanSmall_Remote_Mag", 1000],
	["Small IED (Dug-in)", "IEDLandSmall_Remote_Mag", 1000],
	["Large IED (Urban)", "IEDUrbanBig_Remote_Mag", 1500],
	["Large IED (Dug-in)", "IEDLandBig_Remote_Mag", 1500]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	// MAS Ammo
	["", "100Rnd_mas_545x39_T_mag", 50],
	["", "100Rnd_mas_545x39_mag", 50],
	["", "100Rnd_mas_762x39_T_mag", 50],
	["", "100Rnd_mas_762x39_mag", 50],
	["", "100Rnd_mas_762x51_Stanag", 50],
	["", "100Rnd_mas_762x51_T_Stanag", 50],
	["", "100Rnd_mas_762x54_T_mag", 50],
	["", "100Rnd_mas_762x54_mag", 50],
	["", "10Rnd_mas_12Gauge_Pellets", 50],
	["", "10Rnd_mas_12Gauge_Slug", 50],
	["", "10Rnd_mas_338_Stanag", 50],
	["", "10Rnd_mas_338_T_Stanag", 50],
	["", "10Rnd_mas_45acp_Mag", 50],
	["", "10Rnd_mas_762x54_T_mag", 50],
	["", "10Rnd_mas_762x54_mag", 50],
	["", "12Rnd_mas_45acp_Mag", 50],
	["", "12Rnd_mas_PG_HE_missiles", 50],
	["", "12Rnd_mas_PG_missiles", 50],
	["", "13Rnd_mas_9x21_Mag", 50],
	["", "150Rnd_762x51_Box", 50],
	["", "150Rnd_762x51_Box_Tracer", 50],
	["", "150Rnd_mas_556x45_Stanag", 50],
	["", "150Rnd_mas_556x45_T_Stanag", 50],
	["", "15Rnd_mas_9x21_Mag", 50],
	["", "16Rnd_9x21_Mag", 50],
	["", "17Rnd_mas_9x21_Mag", 50],
	["", "1Rnd_HE_Grenade_shell", 50],
	["", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["", "1Rnd_SmokePurple_Grenade_shell", 50],
	["", "1Rnd_SmokeRed_Grenade_shell", 50],
	["", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["", "1Rnd_Smoke_Grenade_shell", 50],
	["", "200Rnd_mas_556x45_Stanag", 50],
	["", "200Rnd_mas_556x45_T_Stanag", 50],
	["", "20Rnd_556x45_UW_mag", 50],
	["", "20Rnd_762x51_Mag", 50],
	["", "20Rnd_mas_12Gauge_Demo", 50],
	["", "20Rnd_mas_12Gauge_Pellets", 50],
	["", "20Rnd_mas_12Gauge_Slug", 50],
	["", "20Rnd_mas_762x51_Stanag", 50],
	["", "20Rnd_mas_762x51_T_Stanag", 50],
	["", "20Rnd_mas_765x17_Mag", 50],
	["", "20Rnd_mas_9x39_mag", 50],
	["", "20Rnd_mas_Rocket_03_AP_F", 50],
	["", "20Rnd_mas_Rocket_03_HE_F", 50],
	["", "24Rnd_mas_PG_missiles", 50],
	["", "25Rnd_mas_9x19_Mag", 50],
	["", "2Rnd_mas_Bomb_03_F", 50],
	["", "2Rnd_mas_Missile_AA_03_F", 50],
	["", "2Rnd_mas_r_Bomb_03_F", 50],
	["", "2Rnd_mas_r_Missile_AA_03_F", 50],
	["", "30Rnd_556x45_Stanag", 50],
	["", "30Rnd_556x45_Stanag_Tracer_Green", 50],
	["", "30Rnd_556x45_Stanag_Tracer_Red", 50],
	["", "30Rnd_556x45_Stanag_Tracer_Yellow", 50],
	["", "30Rnd_9x21_Mag", 50],
	["", "30Rnd_mas_545x39_T_mag", 50],
	["", "30Rnd_mas_545x39_mag", 50],
	["", "30Rnd_mas_556x45_Stanag", 50],
	["", "30Rnd_mas_556x45_T_Stanag", 50],
	["", "30Rnd_mas_762x39_T_mag", 50],
	["", "30Rnd_mas_762x39_mag", 50],
	["", "30Rnd_mas_9x21_Stanag", 50],
	["", "30Rnd_mas_9x21d_Stanag", 50],
	["", "30Rnd_mas_9x39_mag", 50],
	["", "3Rnd_HE_Grenade_shell", 50],
	["", "3Rnd_SmokeBlue_Grenade_shell", 50],
	["", "3Rnd_SmokeGreen_Grenade_shell", 50],
	["", "3Rnd_SmokeOrange_Grenade_shell", 50],
	["", "3Rnd_SmokePurple_Grenade_shell", 50],
	["", "3Rnd_SmokeRed_Grenade_shell", 50],
	["", "3Rnd_SmokeYellow_Grenade_shell", 50],
	["", "3Rnd_Smoke_Grenade_shell", 50],
	["", "3Rnd_UGL_FlareCIR_F", 50],
	["", "3Rnd_UGL_FlareGreen_F", 50],
	["", "3Rnd_UGL_FlareRed_F", 50],
	["", "3Rnd_UGL_FlareWhite_F", 50],
	["", "3Rnd_UGL_FlareYellow_F", 50],
	["", "40Rnd_mas_46x30_Mag", 50],
	["", "4Rnd_mas_Missile_AGM_01_F", 50],
	["", "4Rnd_mas_r_Missile_AGM_01_F", 50],
	["", "5Rnd_127x108_Mag", 50],
	["", "5Rnd_mas_127x108_T_mag", 50],
	["", "5Rnd_mas_127x108_dem_mag", 50],
	["", "5Rnd_mas_127x108_mag", 50],
	["", "5Rnd_mas_127x99_Stanag", 50],
	["", "5Rnd_mas_127x99_T_Stanag", 50],
	["", "5Rnd_mas_127x99_dem_Stanag", 50],
	["", "5Rnd_mas_762x51_Stanag", 50],
	["", "5Rnd_mas_762x51_T_Stanag", 50],
	["", "64Rnd_mas_9x18_mag", 50],
	["", "7Rnd_mas_12Gauge_Pellets", 50],
	["", "7Rnd_mas_12Gauge_Slug", 50],
	["", "8Rnd_mas_45acp_Mag", 50],
	["", "8Rnd_mas_9x18_Mag", 50],
	["", "8Rnd_mas_9x18_mag", 50],
	["", "NLAW_F", 50],
	["", "RPG32_mas_AA_F", 50],
	["", "Sting_mas_AA_F", 50],
	["", "Titan_AP", 50],
	["", "Titan_AT", 50],
	["", "UGL_FlareCIR_F", 50],
	["", "UGL_FlareGreen_F", 50],
	["", "UGL_FlareRed_F", 50],
	["", "UGL_FlareWhite_F", 50],
	["", "UGL_FlareYellow_F", 50],
	["", "mas_LAW", 50],
	["", "mas_M136", 50],
	["", "mas_M136_HE", 50],
	["", "mas_MAAWS", 50],
	["", "mas_MAAWS_HE", 50],
	["", "mas_Metis", 50],
	["", "mas_Metis_HE", 50],
	["", "mas_NLAW", 50],
	["", "mas_NLAW_HE", 50],
	["", "mas_OG7", 50],
	["", "mas_PG18", 50],
	["", "mas_PG7L", 50],
	["", "mas_PG7V", 50],
	["", "mas_PG7VR", 50],
	["", "mas_SMAW", 50],
	["", "mas_SMAW_HE", 50],
	["", "mas_SMAW_NE", 50],
	["", "mas_Stinger", 50],
	["", "mas_Strela", 50],
	["", "mas_TBG7V", 50],
	["", "mas_TitanS", 50],
	["", "mas_TitanS_HE", 50],
	["", "mas_pzf60", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	// MAS Silencers
	["", "muzzle_mas_snds_L", 125, "item"],
	["", "muzzle_mas_snds_LM", 125, "item"],
	["", "muzzle_mas_snds_C", 125, "item"],
	["", "muzzle_mas_snds_MP5SD6", 125, "item"],
	["", "muzzle_mas_snds_M", 125, "item"],
	["", "muzzle_mas_snds_Mc", 125, "item"],
	["", "muzzle_mas_snds_MP7", 125, "item"],
	["", "muzzle_mas_snds_AK", 125, "item"],
	["", "muzzle_mas_snds_SM", 125, "item"],
	["", "muzzle_mas_snds_SMc", 125, "item"],
	["", "muzzle_mas_snds_SH", 125, "item"],
	["", "muzzle_mas_snds_SHc", 125, "item"],
	["", "muzzle_mas_snds_SV", 125, "item"],
	["", "muzzle_mas_snds_SVc", 125, "item"],
	["", "muzzle_mas_snds_SVD", 125, "item"],
	["", "muzzle_mas_snds_KSVK", 125, "item"],

	// MAS Pointers
	["", "acc_mas_flash_gun", 125, "item"],
	["", "acc_mas_pointer_gun_IR", 125, "item"],
	["", "acc_mas_pointer_IR", 125, "item"],
	["", "acc_mas_pointer_IR_b", 125, "item"],
	["", "acc_mas_pointer_IR_top", 125, "item"],
	["", "acc_mas_pointer_IR_top_b", 125, "item"],
	["", "acc_mas_pointer_IR2", 125, "item"],
	["", "acc_mas_pointer_IR2_top", 125, "item"],
	["", "acc_mas_pointer_IR2c", 125, "item"],
	["", "acc_mas_pointer_IR2c_top", 125, "item"],

	// MAS Sights
	["", "optic_mas_DMS", 125, "item"],
	["", "optic_mas_DMS_c", 125, "item"],
	["", "optic_mas_Holosight_blk", 125, "item"],
	["", "optic_mas_Holosight_camo", 125, "item"],
	["", "optic_mas_Arco_blk", 125, "item"],
	["", "optic_mas_Arco_camo", 125, "item"],
	["", "optic_mas_Hamr_camo", 125, "item"],
	["", "optic_mas_Aco_camo", 125, "item"],
	["", "optic_mas_ACO_grn_camo", 125, "item"],
	["", "optic_mas_MRCO_camo", 125, "item"],
	["", "optic_mas_zeiss", 125, "item"],
	["", "optic_mas_zeiss_c", 125, "item"],
	["", "optic_mas_zeiss_eo", 125, "item"],
	["", "optic_mas_zeiss_eo_c", 125, "item"],
	["", "optic_mas_acog", 125, "item"],
	["", "optic_mas_acog_c", 125, "item"],
	["", "optic_mas_acog_eo", 125, "item"],
	["", "optic_mas_acog_eo_c", 125, "item"],
	["", "optic_mas_acog_rd", 125, "item"],
	["", "optic_mas_acog_rd_c", 125, "item"],
	["", "optic_mas_handle", 125, "item"],
	["", "optic_mas_aim", 125, "item"],
	["", "optic_mas_aim_c", 125, "item"],
	["", "optic_mas_PSO", 125, "item"],
	["", "optic_mas_PSO_c", 125, "item"],
	["", "optic_mas_PSO_eo", 125, "item"],
	["", "optic_mas_PSO_eo_c", 125, "item"],
	["", "optic_mas_PSO_nv", 125, "item"],
	["", "optic_mas_PSO_nv_c", 125, "item"],
	["", "optic_mas_PSO_nv_eo", 125, "item"],
	["", "optic_mas_PSO_nv_eo_c", 125, "item"],
	["", "optic_mas_PSO_day", 125, "item"],
	["", "optic_mas_PSO_nv_day", 125, "item"],
	["", "optic_mas_term", 125, "item"],
	["", "optic_mas_MRD", 125, "item"],
	["", "optic_mas_LRPS", 125, "item"],
	["", "optic_mas_kobra", 125, "item"],
	["", "optic_mas_kobra_c", 125, "item"],
	["", "optic_mas_nspu", 125, "item"],
	["", "optic_mas_goshawk", 125, "item"],
	["", "optic_mas_PSO_kv", 125, "item"],
	["", "optic_mas_PSO_kv_c", 125, "item"],
	
	// Vanilla accessories
	["Flashlight", "acc_flashlight", 100, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 100, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 75, "item"],
	["ACO (Red)", "optic_Aco", 100, "item"],
	["ACO (Green)", "optic_Aco_grn", 100, "item"],
	["Holosight", "optic_Holosight", 125, "item"],
	["MRCO", "optic_MRCO", 150, "item"],
	["ARCO", "optic_Arco", 175, "item"],
	["RCO", "optic_Hamr", 200, "item"],
	["MOS", "optic_SOS", 300, "item"],
	["DMS", "optic_DMS", 350, "item"],
	["AMS [DLC]", "optic_AMS", 400, "item"],
	["AMS (Khaki) [DLC]", "optic_AMS_khk", 400, "item"],
	["AMS (Sand) [DLC]", "optic_AMS_snd", 400, "item"],
	["Kahlia [DLC]", "optic_KHS_blk", 500, "item"],
	["Kahlia (Hex) [DLC]", "optic_KHS_hex", 500, "item"],
	["Kahlia (Tan) [DLC]", "optic_KHS_tan", 500, "item"],
	["Kahlia (Old) [DLC]", "optic_KHS_old", 500, "item"],
	["LRPS", "optic_LRPS", 750, "item"],
	["NVS", "optic_NVS", 1500, "item"],
	["TWS", "optic_tws", 7500, "item"],
	["TWS MG", "optic_tws_mg", 8500, "item"],
	["Nightstalker", "optic_Nightstalker", 10000, "item"],
	
	// Bipod
	["Bipod (NATO)", "bipod_01_F_blk", 450, "item"],
	["Bipod (CSAT)", "bipod_02_F_blk", 450, "item"],
	["Bipod (AAF)", "bipod_03_F_blk", 450, "item"],
	["Bipod (MTP)", "bipod_01_F_mtp", 450, "item"],
	["Bipod (Hex)", "bipod_02_F_hex", 450, "item"],
	["Bipod (Olive)", "bipod_03_F_oli", 450, "item"],
	["Bipod (Sand)", "bipod_01_F_snd", 450, "item"],
	["Bipod (Tan)", "bipod_02_F_tan", 450, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Gas Mask (NATO)", "H_CrewHelmetHeli_B", 1000, "hat"],
	["Gas Mask (CSAT)", "H_CrewHelmetHeli_O", 1000, "hat"],
	["Gas Mask (AAF)", "H_CrewHelmetHeli_I", 1000, "hat"],

	["", "rhs_6b27m_green", 50, "hat"],
	["", "rhs_6b27m_green_ess", 50, "hat"],
	["", "rhs_6b27m_green_bala", 50, "hat"],
	["", "rhs_6b27m_green_ess_bala", 50, "hat"],
	["", "rhs_6b27m", 50, "hat"],
	["", "rhs_6b27m_ess", 50, "hat"],
	["", "rhs_6b27m_bala", 50, "hat"],
	["", "rhs_6b27m_ess_bala", 50, "hat"],
	["", "rhs_6b27m_digi", 50, "hat"],
	["", "rhs_6b27m_digi_bala", 50, "hat"],
	["", "rhs_6b27m_ml", 50, "hat"],
	["", "rhs_6b28_green", 50, "hat"],
	["", "rhs_6b28_green_ess", 50, "hat"],
	["", "rhs_6b28_green_bala", 50, "hat"],
	["", "rhs_6b28_green_ess_bala", 50, "hat"],
	["", "rhs_6b28", 50, "hat"],
	["", "rhs_6b28_ess", 50, "hat"],
	["", "rhs_6b28_bala", 50, "hat"],
	["", "rhs_6b28_ess_bala", 50, "hat"],
	["", "rhs_6b28_flora", 50, "hat"],
	["", "rhs_6b28_flora_ess", 50, "hat"],
	["", "rhs_6b28_flora_bala", 50, "hat"],
	["", "rhs_6b28_ess_bala", 50, "hat"],
	["", "rhs_Booniehat_flora", 50, "hat"],
	["", "rhs_Booniehat_digi", 50, "hat"],
	["", "rhs_fieldcap", 50, "hat"],
	["", "rhs_fieldcap_helm", 50, "hat"],
	["", "rhs_fieldcap_helm_digi", 50, "hat"],
	["", "rhs_tsh4", 50, "hat"],
	["", "rhs_tsh4_ess", 50, "hat"],
	["", "rhs_tsh4_bala", 50, "hat"],
	["", "rhs_tsh4_ess_bala", 50, "hat"],
	["", "rhs_zsh7a_mike", 50, "hat"],
	["", "rhs_zsh7a", 50, "hat"],
	["", "rhs_balaclava", 50, "hat"],
	["", "rhs_scarf", 50, "hat"],
	["", "rhsusf_ach_bare", 50, "hat"],
	["", "rhsusf_ach_bare_ess", 50, "hat"],
	["", "rhsusf_ach_bare_headset", 50, "hat"],
	["", "rhsusf_ach_bare_headset_ess", 50, "hat"],
	["", "rhsusf_ach_helmet_m81", 50, "hat"],
	["", "rhsusf_opscore_01", 50, "hat"],
	["", "rhsusf_opscore_02", 50, "hat"],
	["", "rhs_Booniehat_ucp", 50, "hat"],
	["", "rhs_Booniehat_ocp", 50, "hat"],
	["", "rhsusf_patrolcap_ucp", 50, "hat"],
	["", "rhsusf_patrolcap_ocp", 50, "hat"],
	["", "rhsusf_cvc_green_helmet", 50, "hat"],
	["", "rhsusf_cvc_green_ess", 50, "hat"],
	["", "H_PilotHelmetHeli_B", 50, "hat"],
	["", "H_CrewHelmetHeli_B", 50, "hat"]
];

uniformArray = compileFinal str
[
	["", "rhs_uniform_flora", 300, "uni"],
	["", "rhs_uniform_vdv_flora", 300, "uni"],
	["", "rhs_uniform_flora_patchless", 300, "uni"],
	["", "rhs_uniform_vdv_mflora", 300, "uni"],
	["", "rhs_uniform_mflora_patchless", 300, "uni"],
	["", "rhs_uniform_msv_emr", 300, "uni"],
	["", "rhs_uniform_vdv_emr", 300, "uni"],
	["", "rhs_uniform_emr_patchless", 300, "uni"],
	["", "rhs_uniform_df15", 300, "uni"],
	["", "rhs_uniform_cu_ucp", 300, "uni"],
	["", "rhs_uniform_cu_ocp_patchless", 300, "uni"],
	["", "rhs_uniform_cu_ucp", 300, "uni"],
	["", "rhs_uniform_cu_ucp_patchless", 300, "uni"],

	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 500, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 500, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 500, "uni"],
	["Wetsuit (NATO)", "U_B_Wetsuit", 400, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 400, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 400, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 150, "uni"],
	["Default Uniform (CSAT)", "U_O_CombatUniform_ocamo", 150, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 150, "uni"],
	["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt", 150, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 150, "uni"],
	["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 150, "uni"],
	["CTRG Combat Uniform (UBACS)", "U_B_CTRG_1", 150, "uni"],
	["CTRG Combat Uniform (UBACS2)", "U_B_CTRG_2", 150, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_3", 150, "uni"],
	["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 150, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 150, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 150, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 150, "uni"],
	["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 150, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 150, "uni"],
	["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 150, "uni"],
	["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 150, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 150, "uni"],
	["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 250, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 250, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 125, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 125, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 125, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 125, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 125, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 125, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 125, "uni"],
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 125, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 125, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 125, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 125, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 125, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 125, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 125, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 125, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 125, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 125, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 125, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 125, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 125, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 125, "uni"],
	["Polo (Competitor)", "U_Competitor", 125, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 125, "uni"],
	["Full Ghillie (Arid) (NATO)", "U_B_FullGhillie_ard", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Arid) (CSAT)", "U_O_FullGhillie_ard", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Arid) (AAF)", "U_I_FullGhillie_ard", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Lush) (NATO)", "U_B_FullGhillie_lsh", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Lush) (CSAT)", "U_O_FullGhillie_lsh", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Lush) (AAF)", "U_I_FullGhillie_lsh", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Semi-Arid) (NATO)", "U_B_FullGhillie_sard", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Semi-Arid) (CSAT)", "U_O_FullGhillie_sard", 2500, "uni"], //DLC Uniform
	["Full Ghillie (Semi-Arid) (AAF)", "U_I_FullGhillie_sard", 2500, "uni"] //DLC Uniform
];

vestArray = compileFinal str
[

//DLC
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"], // DLC Vest
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"], // DLC Vest
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"], // DLC Vest
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"], // DLC Vest
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"], // DLC Vest

	["", "rhs_6b23_digi", 200, "vest"],
	["", "rhs_6b23_digi_crew", 200, "vest"],
	["", "rhs_6b23_digi_crewofficer", 200, "vest"],
	["", "rhs_6b23_digi_engineer", 200, "vest"],
	["", "rhs_6b23_digi_medic", 200, "vest"],
	["", "rhs_6b23_digi_rifleman", 200, "vest"],
	["", "rhs_6b23_digi_sniper", 200, "vest"],
	["", "rhs_6b23_digi_6sh92", 200, "vest"],
	["", "rhs_6b23_digi_6sh92_radio", 200, "vest"],
	["", "rhs_6b23_digi_6sh92_vog", 200, "vest"],
	["", "rhs_6b23_digi_6sh92_vog_headset", 200, "vest"],
	["", "rhs_6b23_digi_6sh92_headset", 200, "vest"],
	["", "rhs_6b23_digi_6sh92_headset_mapcase", 200, "vest"],
	["", "rhs_6b23", 200, "vest"],
	["", "rhs_6b23_crew", 200, "vest"],
	["", "rhs_6b23_crewofficer", 200, "vest"],
	["", "rhs_6b23_engineer", 200, "vest"],
	["", "rhs_6b23_medic", 200, "vest"],
	["", "rhs_6b23_rifleman", 200, "vest"],
	["", "rhs_6b23_sniper", 200, "vest"],
	["", "rhs_6b23_6sh92", 200, "vest"],
	["", "rhs_6b23_6sh92_radio", 200, "vest"],
	["", "rhs_6b23_6sh92_vog", 200, "vest"],
	["", "rhs_6b23_6sh92_vog_headset", 200, "vest"],
	["", "rhs_6b23_6sh92_headset", 200, "vest"],
	["", "rhs_6b23_6sh92_headset_mapcase", 200, "vest"],
	["", "rhs_6b23_ML", 200, "vest"],
	["", "rhs_6b23_ML_crew", 200, "vest"],
	["", "rhs_6b23_ML_crewofficer", 200, "vest"],
	["", "rhs_6b23_ML_engineer", 200, "vest"],
	["", "rhs_6b23_ML_medic", 200, "vest"],
	["", "rhs_6b23_ML_rifleman", 200, "vest"],
	["", "rhs_6b23_ML_sniper", 200, "vest"],
	["", "rhs_6b23_ML_6sh92", 200, "vest"],
	["", "rhs_6b23_ML_6sh92_radio", 200, "vest"],
	["", "rhs_6b23_ML_6sh92_vog", 200, "vest"],
	["", "rhs_6b23_ML_6sh92_vog_headset", 200, "vest"],
	["", "rhs_6b23_ML_6sh92_headset", 200, "vest"],
	["", "rhs_6b23_ML_6sh92_headset_mapcase", 200, "vest"],
	["", "rhs_6sh46", 200, "vest"],
	["", "rhs_vest_commander", 200, "vest"],
	["", "rhs_vydra_3m", 200, "vest"],
	["", "rhsusf_iotv_ucp", 200, "vest"],
	["", "rhsusf_iotv_ucp_grenadier", 200, "vest"],
	["", "rhsusf_iotv_ucp_medic", 200, "vest"],
	["", "rhsusf_iotv_ucp_repair", 200, "vest"],
	["", "rhsusf_iotv_ucp_rifleman", 200, "vest"],
	["", "rhsusf_iotv_ucp_SAW", 200, "vest"],
	["", "rhsusf_iotv_ucp_squadleader", 200, "vest"],
	["", "rhsusf_iotv_ucp_teamleader", 200, "vest"],
	["", "rhsusf_iotv_ocp", 200, "vest"],
	["", "rhsusf_iotv_ocp_grenadier", 200, "vest"],
	["", "rhsusf_iotv_ocp_medic", 200, "vest"],
	["", "rhsusf_iotv_ocp_repair", 200, "vest"],
	["", "rhsusf_iotv_ocp_rifleman", 200, "vest"],
	["", "rhsusf_iotv_ocp_SAW", 200, "vest"],
	["", "rhsusf_iotv_ocp_squadleader", 200, "vest"],
	["", "rhsusf_iotv_ocp_teamleader", 200, "vest"],
	
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"]
];

backpackArray = compileFinal str
[
	// RHS
	["", "rhs_sidor", 250, "backpack"],
	["", "rhsusf_falconii", 250, "backpack"],
	["", "rhs_assault_umbts", 350, "backpack"],
	["", "rhs_assault_umbts_engineer", 150, "backpack"],
	["", "rhs_assault_umbts_medic", 150, "backpack"],
	["", "rhs_assault_umbts_demo", 150, "backpack"],
	["", "rhs_sidorMG", 150, "backpack"],
	["", "rhs_rpg", 150, "backpack"],
	["", "rhsusf_assault_eagleaiii_ucp", 350, "backpack"],
	["", "rhsusf_assault_eagleaiii_ocp", 350, "backpack"],
	["", "rhsusf_assault_eagleaiii_ocp_engineer", 150, "backpack"],
	["", "rhsusf_assault_eagleaiii_ocp_medic", 150, "backpack"],
	["", "rhsusf_assault_eagleaiii_ocp_demo", 150, "backpack"],
	
	// MAS
	["", "B_mas_AssaultPack_black", 150, "backpack"],
	["", "B_mas_AssaultPack_black_AA", 150, "backpack"],
	["", "B_mas_AssaultPack_black_AT", 150, "backpack"],
	["", "B_mas_AssaultPack_black_AT4", 150, "backpack"],
	["", "B_mas_AssaultPack_black_ATM", 150, "backpack"],
	["", "B_mas_AssaultPack_black_MAAWS", 150, "backpack"],
	["", "B_mas_AssaultPack_black_Medic", 150, "backpack"],
	["", "B_mas_AssaultPack_black_Repair", 150, "backpack"],
	["", "B_mas_AssaultPack_black_SMAW", 150, "backpack"],
	["", "B_mas_AssaultPack_black_m72", 150, "backpack"],
	["", "B_mas_AssaultPack_des", 150, "backpack"],
	["", "B_mas_AssaultPack_des_AA", 150, "backpack"],
	["", "B_mas_AssaultPack_des_AT", 150, "backpack"],
	["", "B_mas_AssaultPack_des_AT4", 150, "backpack"],
	["", "B_mas_AssaultPack_des_ATM", 150, "backpack"],
	["", "B_mas_AssaultPack_des_MAAWS", 150, "backpack"],
	["", "B_mas_AssaultPack_des_Medic", 150, "backpack"],
	["", "B_mas_AssaultPack_des_Repair", 150, "backpack"],
	["", "B_mas_AssaultPack_des_SMAW", 150, "backpack"],
	["", "B_mas_AssaultPack_des_m72", 150, "backpack"],
	["", "B_mas_AssaultPack_mul", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_AA", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_AT", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_AT4", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_ATM", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_MAAWS", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_Medic", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_Repair", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_SMAW", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_ammo", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_ammo_MG", 150, "backpack"],
	["", "B_mas_AssaultPack_mul_m72", 150, "backpack"],
	["", "B_mas_AssaultPack_rng", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_AA", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_AT", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_AT4", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_ATM", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_MAAWS", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_Medic", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_Repair", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_SMAW", 150, "backpack"],
	["", "B_mas_AssaultPack_rng_m72", 150, "backpack"],
	["", "B_mas_AssaultPack_wint", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_AA", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_AT", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_AT4", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_ATM", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_MAAWS", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_Medic", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_Repair", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_SMAW", 150, "backpack"],
	["", "B_mas_AssaultPack_wint_m72", 150, "backpack"],
	["", "B_mas_Bergen_black", 150, "backpack"],
	["", "B_mas_Bergen_black_Exp", 150, "backpack"],
	["", "B_mas_Bergen_des", 150, "backpack"],
	["", "B_mas_Bergen_des_Exp", 150, "backpack"],
	["", "B_mas_Bergen_mul", 150, "backpack"],
	["", "B_mas_Bergen_mul_Exp", 150, "backpack"],
	["", "B_mas_Bergen_rng", 150, "backpack"],
	["", "B_mas_Bergen_rng_Exp", 150, "backpack"],
	["", "B_mas_Bergen_wint", 150, "backpack"],
	["", "B_mas_Bergen_wint_Exp", 150, "backpack"],
	["", "B_mas_Kitbag_black", 150, "backpack"],
	["", "B_mas_Kitbag_des", 150, "backpack"],
	["", "B_mas_Kitbag_mul", 150, "backpack"],
	["", "B_mas_Kitbag_rng", 150, "backpack"],
	["", "B_mas_Kitbag_wint", 150, "backpack"],
	["", "B_mas_m_Bergen_acr", 150, "backpack"],
	["", "B_mas_m_Bergen_acr_c", 150, "backpack"],
	["", "B_mas_m_Bergen_acr_g", 150, "backpack"],
	["", "B_mas_m_Bergen_acr_w", 150, "backpack"],
	["", "B_mas_m_Bergen_al", 150, "backpack"],
	["", "B_mas_m_Bergen_rpg", 150, "backpack"],
	["", "B_mas_m_Bergen_rpg_b", 150, "backpack"],
	["", "B_mas_m_Bergen_us", 150, "backpack"],
	["", "B_mas_m_Bergen_us_b", 150, "backpack"],
	["", "B_mas_m_Bergen_us_g", 150, "backpack"],
	["", "B_mas_m_Bergen_us_m", 150, "backpack"],
	["", "B_mas_m_Bergen_us_w", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_AA", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_AT", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_ATM", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_Medic", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_RPG18", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_RPG7", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_Repair", 150, "backpack"],
	["", "O_mas_AssaultPack_blk_met", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_AA", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_AT", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_ATM", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_Medic", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_RPG18", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_RPG7", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_Repair", 150, "backpack"],
	["", "O_mas_AssaultPack_flo_met", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_AA", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_AT", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_ATM", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_Medic", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_RPG18", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_RPG7", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_Repair", 150, "backpack"],
	["", "O_mas_AssaultPack_rtan_met", 150, "backpack"],
	["", "O_mas_Bergen_blk", 150, "backpack"],
	["", "O_mas_Bergen_blk_Exp", 150, "backpack"],
	["", "O_mas_Bergen_flo", 150, "backpack"],
	["", "O_mas_Bergen_flo_AAA", 150, "backpack"],
	["", "O_mas_Bergen_flo_AAT", 150, "backpack"],
	["", "O_mas_Bergen_flo_Exp", 150, "backpack"],
	["", "O_mas_Bergen_flo_ammo", 150, "backpack"],
	["", "O_mas_Bergen_flo_ammo_MG", 150, "backpack"],
	["", "O_mas_Bergen_rtan", 150, "backpack"],
	["", "O_mas_Bergen_rtan_AAA", 150, "backpack"],
	["", "O_mas_Bergen_rtan_AAT", 150, "backpack"],
	["", "O_mas_Bergen_rtan_Exp", 150, "backpack"],
	["", "O_mas_Bergen_rtan_ammo", 150, "backpack"],
	["", "O_mas_Bergen_rtan_ammo_MG", 150, "backpack"]
];

genItemArray = compileFinal str
[
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	
	// RHS NVG
	["", "rhsusf_ANPVS_14", 100, "nvg"],
	["", "rhsusf_ANPVS_15", 100, "nvg"],
	
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],

	["Laser Designator (NATO)", "Laserdesignator", 1500, "binoc", "WEST"],
	["Laser Designator (CSAT)", "Laserdesignator_02", 1500, "binoc", "EAST"],
	["Laser Designator (AAF)", "Laserdesignator_03", 1500, "binoc", "GUER"],
	["IR Grenade (NATO)", "B_IR_Grenade", 150, "mag", "WEST"],
	["IR Grenade (CSAT)", "O_IR_Grenade", 150, "mag", "EAST"],
	["IR Grenade (AAF)", "I_IR_Grenade", 150, "mag", "GUER"],
	
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],
	
	// MAS Goggles
	["", "G_mas_wpn_bala", 100, "gogg"],
	["", "G_mas_wpn_bala_b", 100, "gogg"],
	["", "G_mas_wpn_bala_gog", 100, "gogg"],
	["", "G_mas_wpn_bala_gog_b", 100, "gogg"],
	["", "G_mas_wpn_bala_gog_t", 100, "gogg"],
	["", "G_mas_wpn_bala_mask", 100, "gogg"],
	["", "G_mas_wpn_bala_mask_b", 100, "gogg"],
	["", "G_mas_wpn_bala_mask_t", 100, "gogg"],
	["", "G_mas_wpn_bala_t", 100, "gogg"],
	["", "G_mas_wpn_gasmask", 100, "gogg"],
	["", "G_mas_wpn_gog", 100, "gogg"],
	["", "G_mas_wpn_gog_d", 100, "gogg"],
	["", "G_mas_wpn_gog_g", 100, "gogg"],
	["", "G_mas_wpn_gog_gd", 100, "gogg"],
	["", "G_mas_wpn_gog_m", 100, "gogg"],
	["", "G_mas_wpn_gog_md", 100, "gogg"],
	["", "G_mas_wpn_mask", 100, "gogg"],
	["", "G_mas_wpn_mask_b", 100, "gogg"],
	["", "G_mas_wpn_shemag", 100, "gogg"],
	["", "G_mas_wpn_shemag_gog", 100, "gogg"],
	["", "G_mas_wpn_shemag_mask", 100, "gogg"],
	["", "G_mas_wpn_shemag_r", 100, "gogg"],
	["", "G_mas_wpn_shemag_w", 100, "gogg"],
	["", "G_mas_wpn_wrap", 100, "gogg"],
	["", "G_mas_wpn_wrap_b", 100, "gogg"],
	["", "G_mas_wpn_wrap_c", 100, "gogg"],
	["", "G_mas_wpn_wrap_f", 100, "gogg"],
	["", "G_mas_wpn_wrap_g", 100, "gogg"],
	["", "G_mas_wpn_wrap_gog", 100, "gogg"],
	["", "G_mas_wpn_wrap_gog_b", 100, "gogg"],
	["", "G_mas_wpn_wrap_gog_c", 100, "gogg"],
	["", "G_mas_wpn_wrap_gog_f", 100, "gogg"],
	["", "G_mas_wpn_wrap_gog_g", 100, "gogg"],
	["", "G_mas_wpn_wrap_gog_t", 100, "gogg"],
	["", "G_mas_wpn_wrap_mask", 100, "gogg"],
	["", "G_mas_wpn_wrap_mask_b", 100, "gogg"],
	["", "G_mas_wpn_wrap_mask_c", 100, "gogg"],
	["", "G_mas_wpn_wrap_mask_f", 100, "gogg"],
	["", "G_mas_wpn_wrap_mask_g", 100, "gogg"],
	["", "G_mas_wpn_wrap_mask_t", 100, "gogg"],
	["", "G_mas_wpn_wrap_t", 100, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	//["Base Re-Locker", "Land_Portable_generator_F", 100000, "object"],  //Cael817, SNAFU,Used for base operations <-- Non destroyable
	["Base door (beta)", "Land_Canal_Wall_10m_F", 25000, "object"],  // LouD
	["Base door key (PIN: 0000) (beta)", "Land_InfoStand_V2_F", 10000, "object"],  // LouD
	["Base locker (PIN: 0000)", "Land_Device_assembled_F", 50000, "object"],  //Cael817, SNAFU,Used for base operations <-- Destroyable
	["Safe (PIN: 0000)", "Box_NATO_AmmoVeh_F", 50000, "ammocrate"],
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 200, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 200, "object"],
	["Boom Gate", "Land_BarGate_F", 300, "object"],
	["Pipes", "Land_Pipes_Large_F", 400, "object"],
	["Concrete Frame", "Land_CncShelter_F", 400, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 400, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 400, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 700, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 1000, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 300, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 400, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 500, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 1000, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 800, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 1000, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 1200, "object"],
	["Concrete Wall", "Land_CncWall1_F", 800, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 800, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 1200, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 1200, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 800, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 1000, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 300, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 300, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 400, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 300, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 300, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 300, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 1000, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 2000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 5000, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 7500, "object"],
	["Military Cargo HQ", "Land_Cargo_HQ_V1_F", 10000, "object"], // Added on player request
	["Concrete Ramp", "Land_RampConcrete_F", 1000, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 1500, "object"],
	["Concrete Block", "BlockConcrete_F", 5000, "object"],
	["Scaffolding", "Land_Scaffolding_F", 1000, "object"],
	["Food sacks", "Land_Sacks_goods_F", 5000, "object"], // Added on player request
	["Water Barrel", "Land_BarrelWater_F", 5000, "object"] // Added on player request
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["", "RHS_UAZ_MSV_01", 100, "vehicle"],
	["", "rhs_uaz_open_MSV_01", 100, "vehicle"],

	["", "RHS_Ural_Open_Civ_01", 100, "vehicle"],
	["", "RHS_Ural_Open_MSV_01", 100, "vehicle"],	
	["", "RHS_Ural_Fuel_MSV_01", 500, "vehicle"],	

	["", "rhs_tigr_msv", 500, "vehicle"],
	["", "rhs_tigr_vdv", 4000, "vehicle"],
	["", "rhs_tigr_vmf", 4000, "vehicle"],
	["", "rhs_tigr_vv", 4000, "vehicle"],
	["", "rhs_gaz66_msv", 500, "vehicle"],
	["", "rhs_gaz66_vdv", 4000, "vehicle"],
	["", "rhs_gaz66_vmf", 4000, "vehicle"],
	["", "rhs_gaz66_vv", 4000, "vehicle"],
	["", "rhs_gaz66o_msv", 500, "vehicle"],
	["", "rhs_gaz66o_vdv", 4000, "vehicle"],
	["", "rhs_gaz66o_vmf", 4000, "vehicle"],
	["", "rhs_gaz66o_vv", 4000, "vehicle"],
	["", "rhs_gaz66_r142_msv", 500, "vehicle"],
	["", "rhs_gaz66_r142_vdv", 4000, "vehicle"],
	["", "rhs_gaz66_r142_vmf", 4000, "vehicle"],
	["", "rhs_gaz66_r142_vv", 4000, "vehicle"],
	["", "rhs_gaz66_ap2_msv", 500, "vehicle"],
	["", "rhs_gaz66_ap2_vdv", 4000, "vehicle"],
	["", "rhs_gaz66_ap2_vmf", 4000, "vehicle"],
	["", "rhs_gaz66_ap2_vv", 4000, "vehicle"],
	["", "rhs_gaz66_repair_msv", 500, "vehicle"],
		
		
	["", "rhsusf_m1025_w", 500, "vehicle"],
	["", "rhsusf_m1025_d", 4000, "vehicle"],
	["", "rhsusf_m1025_w_s", 4000, "vehicle"],

	["", "rhsusf_M1078A1P2_wd_fmtv_usarmy", 500, "vehicle"],
	["", "rhsusf_M1083A1P2_wd_fmtv_usarmy", 500, "vehicle"],

	["", "rhsusf_rg33_d", 500, "vehicle"],

	["", "rhsusf_M977A2_usarmy_wd", 800, "vehicle"],
	["", "rhsusf_M977A2_CPK_usarmy_wd", 800, "vehicle"],
	["", "rhsusf_m998_w_2dr", 800, "vehicle"],
	["", "rhsusf_m998_d_2dr", 800, "vehicle"],
	["", "rhsusf_m998_w_s_2dr", 800, "vehicle"],
	["", "rhsusf_m998_d_s_2dr", 800, "vehicle"],
	["", "rhsusf_m998_w_2dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_d_2dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_w_s_2dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_d_s_2dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_w_2dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_d_2dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_w_s_2dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_d_s_2dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_w_4dr", 800, "vehicle"],
	["", "rhsusf_m998_d_4dr", 800, "vehicle"],
	["", "rhsusf_m998_w_s_4dr", 800, "vehicle"],
	["", "rhsusf_m998_d_s_4dr", 800, "vehicle"],
	["", "rhsusf_m998_w_4dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_d_4dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_w_s_4dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_d_s_4dr_halftop", 800, "vehicle"],
	["", "rhsusf_m998_w_4dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_d_4dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_w_s_4dr_fulltop", 800, "vehicle"],
	["", "rhsusf_m998_d_s_4dr_fulltop", 800, "vehicle"],

	["", "rhs_typhoon_vdv", 1500, "vehicle"]
];

armoredArray = compileFinal str
[
	["", "rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy", 1500, "vehicle"],
	["", "rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy", 1500, "vehicle"],

	["", "rhsusf_m1025_w_m2", 5000, "vehicle"],
	["", "rhsusf_m1025_d_m2", 8000, "vehicle"],
	["", "rhsusf_m1025_w_s_m2", 8000, "vehicle"],
	["", "rhsusf_m1025_d_s_m2", 8000, "vehicle"],

	["", "rhsusf_m1025_w_mk19", 8000, "vehicle"],
	["", "rhsusf_m1025_d_mk19", 10000, "vehicle"],
	["", "rhsusf_m1025_w_s_mk19", 10000, "vehicle"],
	["", "rhsusf_m1025_d_s_mk19", 10000, "vehicle"],

	["", "rhsusf_rg33_m2_wd", 10000, "vehicle"],

	["", "rhsusf_m113_usarmy", 10000, "vehicle"],
	["", "rhsusf_m113d_usarmy", 14000, "vehicle"],

	["", "rhs_prp3_msv", 15000, "vehicle"],
	["", "rhs_prp3_tv", 15000, "vehicle"],
	["", "rhs_prp3_vdv", 155000, "vehicle"],
	["", "rhs_prp3_vv", 15000, "vehicle"],

	["", "rhs_brm1k_msv", 15000, "vehicle"],
	["", "rhs_brm1k_tv", 22500, "vehicle"],
	["", "rhs_brm1k_vdv", 22500, "vehicle"],
	["", "rhs_brm1k_vv", 22500, "vehicle"],

	["", "rhs_btr60_msv", 22500, "vehicle"],
	["", "rhs_btr60_vdv", 22500, "vehicle"],
	["", "rhs_btr60_vmf", 22500, "vehicle"],
	["", "rhs_btr60_vv", 22500, "vehicle"],

	["", "rhs_btr70_msv", 22500, "vehicle"],
	["", "rhs_btr70_vdv", 22500, "vehicle"],
	["", "rhs_btr70_vmf", 22500, "vehicle"],
	["", "rhs_btr70_vv", 22500, "vehicle"],
	["", "rhs_btr70_chdkz", 22500, "vehicle"],

	["", "rhs_btr80_msv", 24000, "vehicle"],
	["", "rhs_btr80_vdv", 24000, "vehicle"],
	["", "rhs_btr80_vmf", 24000, "vehicle"],
	["", "rhs_btr80_vv", 24000, "vehicle"],

	["", "rhs_btr80a_msv", 24000, "vehicle"],
	["", "rhs_btr80a_vdv", 24000, "vehicle"],
	["", "rhs_btr80a_vmf", 24000, "vehicle"],
	["", "rhs_btr80a_vv", 24000, "vehicle"],

	["", "RHS_M2A2_wd", 36000, "vehicle"],	
	["", "RHS_M2A2", 36000, "vehicle"],

	["", "RHS_M2A2_BUSKI_wd", 36000, "vehicle"],
	["", "RHS_M2A2_BUSKI", 36000, "vehicle"],

	["", "RHS_M2A3", 36000, "vehicle"],
	["", "RHS_M2A3", 36000, "vehicle"],

	["", "RHS_M2A3_BUSKI_wd", 36000, "vehicle"],
	["", "RHS_M2A3_BUSKI", 36000, "vehicle"],

	["", "RHS_M2A3_BUSKIII_wd", 36000, "vehicle"],
	["", "RHS_M2A3_BUSKIII", 36000, "vehicle"],

	["", "RHS_M6_wd", 30000, "vehicle"],
	["", "RHS_M6", 30000, "vehicle"],

	["", "rhs_bmd1k", 30000, "vehicle"],
	["", "rhs_bmd1r", 30000, "vehicle"],
	["", "rhs_bmd1", 30000, "vehicle"],
	["", "rhs_bmd1p", 30000, "vehicle"],
	["", "rhs_bmd1pk", 30000, "vehicle"],

	["", "rhs_bmd2", "vehicle"],
	["", "rhs_bmd2k", 30000, "vehicle"],
	["", "rhs_bmd2m", 30000, "vehicle"],

	["", "rhs_bmd4_vdv", 30000, "vehicle"],
	["", "rhs_bmd4m_vdv", 30000, "vehicle"],
	["", "rhs_bmd4ma_vdv", 30000, "vehicle"],

	["", "rhs_bmp1_vdv", 30000, "vehicle"],
	["", "rhs_bmp1d_vdv", 30000, "vehicle"],
	["", "rhs_bmp1k_vdv", 30000, "vehicle"],
	["", "rhs_bmp1p_vdv", 30000, "vehicle"],
	["", "rhs_bmp2_vdv", 30000, "vehicle"],
	["", "rhs_bmp2e_vdv", 30000, "vehicle"],
	["", "rhs_bmp2d_vdv", 30000, "vehicle"],
	["", "rhs_bmp2k_vdv", 30000, "vehicle"],

	["", "rhs_bmp3_late_msv", 30000, "vehicle"],

	["", "rhs_zsu234_aa", 35000, "vehicle"]
];

tanksArray = compileFinal str
[
	//Rocket launcher bullshit 
	["", "RHS_BM21_MSV_01", 10000, "vehicle"],
	["", "RHS_BM21_VDV_01", 10000, "vehicle"],
	["", "RHS_BM21_VMF_01", 10000, "vehicle"],
	["", "RHS_BM21_VV_01", 10000, "vehicle"],

	["", "rhs_9k79", 5000, "vehicle"],

	["", "rhs_sprut_vdv", 40000, "vehicle"],
		
	["", "rhs_t72ba_tv", 50000, "vehicle"],
	["", "rhs_t72bb_tv", 50000, "vehicle"],
	["", "rhs_t72bc_tv", 50000, "vehicle"],
	["", "rhs_t72bd_tv", 50000, "vehicle"],
	["", "rhs_t80", 60000, "vehicle"],
	["", "rhs_t80a", 60000, "vehicle"],
	["", "rhs_t80b", 60000, "vehicle"],
	["", "rhs_t80bk", 60000, "vehicle"],
	["", "rhs_t80bv", 60000, "vehicle"],
	["", "rhs_t80bvk", 60000, "vehicle"],
	["", "rhs_t80u", 60000, "vehicle"],

	["", "rhsusf_m1a1fep_wd", 70000, "vehicle"],
	["", "rhsusf_m1a1fep_d", 70000, "vehicle"],
	["", "rhsusf_m1a1aimwd_usarmy", 70000, "vehicle"],
	["", "rhsusf_m1a1aimd_usarmy", 70000, "vehicle"],
	["", "rhsusf_m1a1aim_tuski_wd", 75000, "vehicle"],
	["", "rhsusf_m1a1aim_tuski_d", 75000, "vehicle"],
	["", "rhsusf_m1a2sep1wd_usarmy", 75000, "vehicle"],
	["", "rhsusf_m1a2sep1d_usarmy", 75000, "vehicle"],
	["", "rhsusf_m1a2sep1tuskiwd_usarmy", 80000, "vehicle"],
	["", "rhsusf_m1a2sep1tuskid_usarmy", 80000, "vehicle"]
			
	//["2S3M1 (artillary)", "rhs_2s3_tv", 150000, "vehicle"],
	//["M109A6 artillary", "rhsusf_m109_usarmy", 150000, "vehicle"],

	//["BM-21 122mm (Rocket Launcher)", "RHS_BM21_MSV_01", 500000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 2500, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 4000, "vehicle"], // MH-6
	
	["", "rhs_ka60_c", 5000, "vehicle"],
	["", "rhs_ka60_grey", 5000, "vehicle"],
	["", "RHS_UH60M_d", 8000, "vehicle"],
	["", "RHS_UH60M", 8000, "vehicle"],
	["", "RHS_CH_47F", 9500, "vehicle"],
	
	["", "RHS_Mi8amt_civilian", 7000, "vehicle"],
	["", "RHS_Mi8mt_vdv", 10000, "vehicle"],
	["", "RHS_Mi8mt_vv", 10000, "vehicle"],
	["", "RHS_Mi8mt_vvs", 10000, "vehicle"],
	["", "RHS_Mi8mt_vvsc", 10000, "vehicle"],

	["", "RHS_UH1Y_FFAR", 15000, "vehicle"],
	["", "RHS_UH1Y", 20000, "vehicle"],


	["", "RHS_Mi8MTV3_vdv", 55000, "vehicle"],
	["", "RHS_Mi8MTV3_vvs", 55000, "vehicle"],
	["", "RHS_Mi8MTV3_vvsc", 55000, "vehicle"],
	["", "RHS_Ka52_vvs", 65000, "vehicle"],
	["", "RHS_Ka52_vvsc", 65000, "vehicle"],
	["", "RHS_Mi24P_vdv", 70000, "vehicle"],
	["", "RHS_Mi24P_vvsc", 70000, "vehicle"],
	["", "RHS_Mi24P_vvs", 70000, "vehicle"],

	//["Mi-8AMTSh VDV", "RHS_Mi8AMTSh_vdv", 75000, "vehicle"],
	["", "RHS_Mi8AMTSh_vvsc", 75000, "vehicle"],
	["", "RHS_Mi8AMTSh_vvs", 75000, "vehicle"],

	["", "RHS_Mi24V_vdv", 80000, "vehicle"],
	["", "RHS_Mi24V_vvs", 80000, "vehicle"],
	["", "RHS_Mi24V_vvsc", 80000, "vehicle"],  

	["", "RHS_AH64D", 85000, "vehicle"],
	["", "RHS_AH64D_AA", 85000, "vehicle"],
	["", "RHS_AH64D_CS", 85000, "vehicle"],
	["", "RHS_AH64D_GS", 85000, "vehicle"],

	["", "RHS_AH1Z_wd", 85000, "vehicle"],
	["", "RHS_AH1Z_wd_GS", 85000, "vehicle"],
	["", "RHS_AH1Z_wd_CS", 85000, "vehicle"]
];

planesArray = compileFinal str
[
	["", "RHS_C130J", 5000, "vehicle"],
	["", "RHS_Su25SM_vvs", 15000, "vehicle"],
	["", "RHS_Su25SM_vvsc", 15000, "vehicle"],
	["", "RHS_A10", 20000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Gray", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.paa"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["ISIS", _texDir + "isis.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
	["Nazi", _texDir + "nazi.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],

	["LSD", "lsd", localize "STR_WL_ShopDescriptions_LSD", "client\icons\lsd.paa", 12500, 6250],
	["Marijuana", "marijuana", localize "STR_WL_ShopDescriptions_Marijuana", "client\icons\marijuana.paa", 10000, 5000],
	["Cocaine", "cocaine", localize "STR_WL_ShopDescriptions_Cocaine", "client\icons\cocaine.paa", 14000, 7000],
	["Heroin", "heroin", localize "STR_WL_ShopDescriptions_Heroin", "client\icons\heroin.paa", 15000, 7500],

	["Vehicle Pinlock", "pinlock", localize "STR_WL_ShopDescriptions_Pinlock", "client\icons\keypad.paa", 1000, 500],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 750, 375],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 5000, 2500],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 600, 300],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500],

	["IP/Net Camera", "cctv_camera", localize "STR_WL_ShopDescriptions_CCTV_Camera", "addons\cctv\icons\camcorder.paa", 850, 500],
	["Camera Terminal", "cctv_base", localize "STR_WL_ShopDescriptions_CCTV_Base", "addons\cctv\icons\laptop.paa", 500, 300]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
