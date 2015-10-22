// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: territories.sqf
//	@file Author: AgentRev, Bewilderbeest

// Territory system definitions. See territory/README.md for more details.
//
// 1 - Territory marker name. Must begin with 'TERRITORY_'
// 2 - Descriptive name
// 3 - Monetary value
// 4 - Territory category, currently unused. See territory/README.md for details.

/*
[
	["TERRITORY_THRONOS_CASTLE", "Thronos Castle", 500, "CASTLE"],
	//["TERRITORY_KASTRO_CASTLE", "Kastro Castle", 500, "CASTLE"],
	["TERRITORY_SW_AIRFIELD", "AAC Airfield", 500, "AIRFIELD"],
	["TERRITORY_MAIN_AIRBASE_SW", "Altis Airport (SW)", 750, "AIRBASE"],
	["TERRITORY_MAIN_AIRBASE_CENTER", "Altis Airport (Center)", 750, "AIRBASE"],
	["TERRITORY_MAIN_AIRBASE_NE", "Altis Airport (NE)", 750, "AIRBASE"],
	["TERRITORY_NE_AIRFIELD", "Molos Airfield", 500, "AIRFIELD"],
	["TERRITORY_SE_AIRFIELD", "Selakano Airfield", 500, "AIRFIELD"],
	["TERRITORY_NW_AIRFIELD", "Northwest Airfield", 500, "AIRFIELD"],
	["TERRITORY_SALTFLATS_AIRFIELD", "Saltflats", 500, "AIRFIELD"],
	["TERRITORY_WEST_POWER_PLANT", "West Power Plant", 500, "POWER"],
	["TERRITORY_CENTER_POWER_PLANT", "Center Power Plant", 500, "POWER"],
	["TERRITORY_IRAKLIA_RUINS", "Iraklia Ruins", 500, "RUINS"],
	["TERRITORY_ARTINARKI_RUINS", "Artinarki Ruins", 500, "RUINS"],
	["TERRITORY_MAGOS_TRANSMITTER", "Magos Transmitter", 500, "TRANSMITTER"],
	["TERRITORY_PYRSOS_TRANSMITTER", "Pyrsos Transmitter", 500, "TRANSMITTER"],
	["TERRITORY_MILITARY_RESEARCH", "Telos Military Base", 500, "MILITARY"],
	// Added extra territories from the TOP servers
	//["TERRITORY_0_KAVALA_A", "Kastro Castle", 500],
	//["TERRITORY_0_KAVALA_B", "Kavala Construction Site", 500],
	//["TERRITORY_0_KAVALA_C", "Kavala Hospital", 500],
	//["TERRITORY_1_ALTISAIR_A", "Altis Airport Military South", 500],
	//["TERRITORY_1_ALTISAIR_B", "Altis Airport Terminal", 500],
	//["TERRITORY_1_ALTISAIR_C", "Altis Airport Military North", 500],
	//["TERRITORY_6_DOCKS_A", "DOCKS North", 500],
	//["TERRITORY_6_DOCKS_B", "DOCKS Center", 500],
	//["TERRITORY_6_DOCKS_C", "DOCKS South", 500],
	//["TERRITORY_6_DOCKS_D", "DOCKS Military", 500],
	["TERRITORY_ORINO_FORTRESS", "Orino Fortress", 500]
]
*/

[
	["TERRITORY_0_KAVALA_A", "Kavala (A)", 5000],
	["TERRITORY_0_KAVALA_B", "Kavala (B)", 5000],
	["TERRITORY_0_KAVALA_C", "Kavala (C)", 5000],
	["TERRITORY_1_ALTISAIR_A", "Altis Airport (A)", 5000],
	["TERRITORY_1_ALTISAIR_B", "Altis Airport (B)", 5000],
	["TERRITORY_1_ALTISAIR_C", "Altis Airport (C)", 5000],
	["TERRITORY_2_PYRGOS_A", "Pyrgos (A)", 5000],
	["TERRITORY_2_PYRGOS_B", "Pyrgos (B)", 5000],
	["TERRITORY_2_PYRGOS_C", "Pyrgos (C)", 5000],
	["TERRITORY_3_SELAKANO_A", "SELAKANO (A)", 5000],
	["TERRITORY_3_SELAKANO_B", "SELAKANO (B)", 5000],
	["TERRITORY_3_SELAKANO_C", "SELAKANO (C)", 5000],
	["TERRITORY_4_KORE_A", "KORE (A)", 5000],
	["TERRITORY_4_KORE_B", "KORE (B)", 5000],
	["TERRITORY_4_KORE_C", "KORE (C)", 5000],
	["TERRITORY_5_ZAROS_A", "ZAROS (A)", 4000],
	["TERRITORY_5_ZAROS_B", "ZAROS (B)", 4000],
	["TERRITORY_5_ZAROS_C", "ZAROS (C)", 4000],
	["TERRITORY_6_DOCKS_A", "DOCKS (A)", 3500],
	["TERRITORY_6_DOCKS_B", "DOCKS (B)", 3500],
	["TERRITORY_6_DOCKS_C", "DOCKS (C)", 3500],
	["TERRITORY_6_DOCKS_D", "DOCKS (D)", 3500],
	["TERRITORY_7_GHOST_A", "GHOST (A)", 3500],
	["TERRITORY_7_GHOST_B", "GHOST (B)", 3500],
	["TERRITORY_7_GHOST_C", "GHOST (C)", 3500],
	["TERRITORY_7_GHOST_D", "GHOST (D)", 3500],
	["TERRITORY_8_ABDERA_A", "ABDERA (A)", 5000],
	["TERRITORY_8_ABDERA_B", "ABDERA (B)", 5000],
	["TERRITORY_8_ABDERA_C", "ABDERA (C)", 5000],
	["TERRITORY_9_PANOCHORI_A", "PANOCHORI (A)", 3500],
	["TERRITORY_9_PANOCHORI_B", "PANOCHORI (B)", 3500],
	["TERRITORY_9_PANOCHORI_C", "PANOCHORI (C)", 3500],
	["TERRITORY_9_PANOCHORI_D", "PANOCHORI (D)", 3500]
]