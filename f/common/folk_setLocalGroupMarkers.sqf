// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is NOed
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};

// ====================================================================================
switch (_unitfaction) do
{

// ====================================================================================

// MARKERS: BLUFOR > NATO
// Markers seen by players in NATO slots.
// ["Group assigned in init line", case, text next to marker on map, colour]

	case "blu_f":
	{
		//Infantry Platoon
		["GrpNATO_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DC", 0, "XO", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A4", 1, "A4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B4", 1, "B4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C4", 1, "C4", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpNATO_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D4", 1, "D4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpNATO_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_ST2",  4, "ST2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_ST3",  4, "ST3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_ST4",  4, "ST4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG2",  2, "HMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG3",  2, "HMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG4",  2, "HMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_MTR2",  5, "MTR2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_MTR3",  5, "MTR3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_MTR4",  5, "MTR4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpNATO_SAM2",  3, "SAM2", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpNATO_SAM3",  3, "SAM3", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpNATO_SAM4",  3, "SAM4", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team

		// AUX
		["GrpNATO_AUX",  6, "AUX", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_LOG",  6, "LOG", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpNATO_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Armor Division
 		["GrpNATO_T1",  7, "TANGO1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_T2",  7, "TANGO2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_T3",  7, "TANGO3", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_W1",  7, "WHISKY1", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_W2",  7, "WHISKY2", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_W3",  7, "WHISKY3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_Z1",  7, "ZULU1", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_Z2",  7, "ZULU2", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_Z3",  7, "ZULU3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpNATO_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		// MEDEVAC chopper
   		["GrpNATO_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, CAS
		["GrpNATO_REA1",  8, "REAPER1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpNATO_REA2",  8, "REAPER2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpNATO_REA3",  8, "REAPER3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpNATO_KNI1",  8, "KNIGHT1", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpNATO_KNI2",  8, "KNIGHT2", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpNATO_KNI3",  8, "KNIGHT3", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpNATO_SCO1",  8, "SCOUT1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpNATO_SCO2",  8, "SCOUT2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpNATO_SCO3",  8, "SCOUT3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpNATO_SWO1",  8, "SWORD1", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpNATO_SWO2",  8, "SWORD2", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpNATO_SWO3",  8, "SWORD3", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpNATO_PAV",  8, "PAVEMENT", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PAVEMENT
		["GrpNATO_BAR",  8, "BARON", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON
		["GrpNATO_RAP",  8, "RAPTOR", "ColorBlue"] spawn f_fnc_localGroupMarker;		//RAPTOR
		["GrpNATO_PHO",  8, "PHOENIX", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PHOENIX
		["GrpNATO_THU",  8, "THUNDERBIRD", "ColorBlue"] spawn f_fnc_localGroupMarker;	//THUNDERBIRD

		// Divers
		["GrpNATO_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitNATO_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UNITNATO_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: BLUFOR > FIA
// Markers seen by players in FIA slots.

	case "blu_g_f":
	{
		//Infantry Platoon
		["GrpFIA_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DC", 0, "XO", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpFIA_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_A4", 1, "A4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpFIA_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B4", 1, "B4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpFIA_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C4", 1, "C4", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpFIA_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D4", 1, "D4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpFIA_ST2",  4, "ST2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpFIA_ST3",  4, "ST3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpFIA_ST4",  4, "ST4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpFIA_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HMG2",  2, "HMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HMG3",  2, "HMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HMG4",  2, "HMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpFIA_MTR2",  5, "MTR2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpFIA_MTR3",  5, "MTR3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpFIA_MTR4",  5, "MTR4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpFIA_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpFIA_SAM2",  3, "SAM2", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpFIA_SAM3",  3, "SAM3", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpFIA_SAM4",  3, "SAM4", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team

		// AUX
		["GrpFIA_AUX",  6, "AUX", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_LOG",  6, "LOG", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Armor Division
 		["GrpFIA_T1",  7, "TANGO1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_T2",  7, "TANGO2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_T3",  7, "TANGO3", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_W1",  7, "WHISKY1", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_W2",  7, "WHISKY2", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_W3",  7, "WHISKY3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_Z1",  7, "ZULU1", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_Z2",  7, "ZULU2", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_Z3",  7, "ZULU3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpFIA_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		// MEDEVAC chopper
   		["GrpFIA_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, CAS
		["GrpFIA_REA1",  8, "REAPER1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpFIA_REA2",  8, "REAPER2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpFIA_REA3",  8, "REAPER3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpFIA_KNI1",  8, "KNIGHT1", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpFIA_KNI2",  8, "KNIGHT2", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpFIA_KNI3",  8, "KNIGHT3", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpFIA_SCO1",  8, "SCOUT1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpFIA_SCO2",  8, "SCOUT2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpFIA_SCO3",  8, "SCOUT3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpFIA_SWO1",  8, "SWORD1", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpFIA_SWO2",  8, "SWORD2", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpFIA_SWO3",  8, "SWORD3", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpFIA_PAV",  8, "PAVEMENT", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PAVEMENT
		["GrpFIA_BAR",  8, "BARON", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON
		["GrpFIA_RAP",  8, "RAPTOR", "ColorBlue"] spawn f_fnc_localGroupMarker;		//RAPTOR
		["GrpFIA_PHO",  8, "PHOENIX", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PHOENIX
		["GrpFIA_THU",  8, "THUNDERBIRD", "ColorBlue"] spawn f_fnc_localGroupMarker;	//THUNDERBIRD

		// Divers
		["GrpFIA_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitFIA_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UNITFIA_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

// MARKERS: OPFOR > CSAT
// Markers seen by players in CSAT slots.

	case "opf_f":
	{
		//Infantry Platoon
		["GrpCSAT_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DC", 0, "XO", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_A4", 1, "A4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B4", 1, "B4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C4", 1, "C4", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D4", 1, "D4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpCSAT_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpCSAT_ST2",  4, "ST2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpCSAT_ST3",  4, "ST3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpCSAT_ST4",  4, "ST4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpCSAT_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HMG2",  2, "HMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HMG3",  2, "HMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HMG4",  2, "HMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpCSAT_MTR2",  5, "MTR2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpCSAT_MTR3",  5, "MTR3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpCSAT_MTR4",  5, "MTR4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpCSAT_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpCSAT_SAM2",  3, "SAM2", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpCSAT_SAM3",  3, "SAM3", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpCSAT_SAM4",  3, "SAM4", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team

		// AUX
		["GrpCSAT_AUX",  6, "AUX", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_LOG",  6, "LOG", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpCSAT_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Armor Division
 		["GrpCSAT_T1",  7, "TANGO1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_T2",  7, "TANGO2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_T3",  7, "TANGO3", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_W1",  7, "WHISKY1", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_W2",  7, "WHISKY2", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_W3",  7, "WHISKY3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_Z1",  7, "ZULU1", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_Z2",  7, "ZULU2", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_Z3",  7, "ZULU3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpCSAT_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpCSAT_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpCSAT_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpCSAT_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		// MEDEVAC chopper
   		["GrpCSAT_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, CAS
		["GrpCSAT_REA1",  8, "REAPER1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpCSAT_REA2",  8, "REAPER2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpCSAT_REA3",  8, "REAPER3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpCSAT_KNI1",  8, "KNIGHT1", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpCSAT_KNI2",  8, "KNIGHT2", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpCSAT_KNI3",  8, "KNIGHT3", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpCSAT_SCO1",  8, "SCOUT1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpCSAT_SCO2",  8, "SCOUT2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpCSAT_SCO3",  8, "SCOUT3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpCSAT_SWO1",  8, "SWORD1", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpCSAT_SWO2",  8, "SWORD2", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpCSAT_SWO3",  8, "SWORD3", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpCSAT_PAV",  8, "PAVEMENT", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PAVEMENT
		["GrpCSAT_BAR",  8, "BARON", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON
		["GrpCSAT_RAP",  8, "RAPTOR", "ColorBlue"] spawn f_fnc_localGroupMarker;		//RAPTOR
		["GrpCSAT_PHO",  8, "PHOENIX", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PHOENIX
		["GrpCSAT_THU",  8, "THUNDERBIRD", "ColorBlue"] spawn f_fnc_localGroupMarker;	//THUNDERBIRD

		// Divers
		["GrpCSAT_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitCSAT_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UNITCSAT_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};


// ====================================================================================

// MARKERS: INDEPEDENT > AAF
// Markers seen by players in AAF slots.

	case "ind_f":
	{
		//Infantry Platoon
		["GrpAAF_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DC", 0, "XO", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpAAF_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_A4", 1, "A4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpAAF_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B4", 1, "B4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C4", 1, "C4", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpAAF_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D4", 1, "D4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpAAF_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpAAF_ST2",  4, "ST2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpAAF_ST3",  4, "ST3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpAAF_ST4",  4, "ST4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpAAF_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HMG2",  2, "HMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HMG3",  2, "HMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HMG4",  2, "HMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpAAF_MTR2",  5, "MTR2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpAAF_MTR3",  5, "MTR3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpAAF_MTR4",  5, "MTR4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpAAF_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpAAF_SAM2",  3, "SAM2", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpAAF_SAM3",  3, "SAM3", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpAAF_SAM4",  3, "SAM4", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team

		// AUX
		["GrpAAF_AUX",  6, "AUX", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_LOG",  6, "LOG", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpAAF_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Armor Division
 		["GrpAAF_T1",  7, "TANGO1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_T2",  7, "TANGO2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_T3",  7, "TANGO3", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_W1",  7, "WHISKY1", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_W2",  7, "WHISKY2", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_W3",  7, "WHISKY3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_Z1",  7, "ZULU1", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_Z2",  7, "ZULU2", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_Z3",  7, "ZULU3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpAAF_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpAAF_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpAAF_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpAAF_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		// MEDEVAC chopper
   		["GrpAAF_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, CAS
		["GrpAAF_REA1",  8, "REAPER1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpAAF_REA2",  8, "REAPER2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpAAF_REA3",  8, "REAPER3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpAAF_KNI1",  8, "KNIGHT1", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpAAF_KNI2",  8, "KNIGHT2", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpAAF_KNI3",  8, "KNIGHT3", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpAAF_SCO1",  8, "SCOUT1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpAAF_SCO2",  8, "SCOUT2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpAAF_SCO3",  8, "SCOUT3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpAAF_SWO1",  8, "SWORD1", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpAAF_SWO2",  8, "SWORD2", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpAAF_SWO3",  8, "SWORD3", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpAAF_PAV",  8, "PAVEMENT", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PAVEMENT
		["GrpAAF_BAR",  8, "BARON", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON
		["GrpAAF_RAP",  8, "RAPTOR", "ColorBlue"] spawn f_fnc_localGroupMarker;		//RAPTOR
		["GrpAAF_PHO",  8, "PHOENIX", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PHOENIX
		["GrpAAF_THU",  8, "THUNDERBIRD", "ColorBlue"] spawn f_fnc_localGroupMarker;	//THUNDERBIRD

		// Divers
		["GrpAAF_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitAAF_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UNITAAF_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};


	case "mas_usa_rang":
	{
		//Infantry Platoon
		["GrpNATO_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DC", 0, "XO", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A4", 1, "A4", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B4", 1, "B4", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C4", 1, "C4", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpNATO_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D4", 1, "D4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpNATO_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_ST1",  4, "ST1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_ST2",  4, "ST2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_ST3",  4, "ST3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_ST4",  4, "ST4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Sniper Team
		["GrpNATO_HMG1",  2, "HMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG2",  2, "HMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG3",  2, "HMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HMG4",  2, "HMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MTR1",  5, "MTR1", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_MTR2",  5, "MTR2", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_MTR3",  5, "MTR3", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_MTR4",  5, "MTR4", "ColorOrange"] spawn f_fnc_localGroupMarker; //Mortar Team
		["GrpNATO_SAM1",  3, "SAM1", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpNATO_SAM2",  3, "SAM2", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpNATO_SAM3",  3, "SAM3", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team
		["GrpNATO_SAM4",  3, "SAM4", "ColorOrange"] spawn f_fnc_localGroupMarker; //AA Team

		// AUX
		["GrpNATO_AUX",  6, "AUX", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_LOG",  6, "LOG", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpNATO_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Armor Division
 		["GrpNATO_T1",  7, "TANGO1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_T2",  7, "TANGO2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_T3",  7, "TANGO3", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_W1",  7, "WHISKY1", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_W2",  7, "WHISKY2", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_W3",  7, "WHISKY3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_Z1",  7, "ZULU1", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_Z2",  7, "ZULU2", "ColorGreen"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_Z3",  7, "ZULU3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpNATO_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		// MEDEVAC chopper
   		["GrpNATO_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, CAS
		["GrpNATO_REA1",  8, "REAPER1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpNATO_REA2",  8, "REAPER2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpNATO_REA3",  8, "REAPER3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//REAPER
		["GrpNATO_KNI1",  8, "KNIGHT1", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpNATO_KNI2",  8, "KNIGHT2", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpNATO_KNI3",  8, "KNIGHT3", "ColorRed"] spawn f_fnc_localGroupMarker;		//KNIGHT
		["GrpNATO_SCO1",  8, "SCOUT1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpNATO_SCO2",  8, "SCOUT2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpNATO_SCO3",  8, "SCOUT3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//SCOUT
		["GrpNATO_SWO1",  8, "SWORD1", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpNATO_SWO2",  8, "SWORD2", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpNATO_SWO3",  8, "SWORD3", "ColorRed"] spawn f_fnc_localGroupMarker;		//SWORD
		["GrpNATO_PAV",  8, "PAVEMENT", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PAVEMENT
		["GrpNATO_BAR",  8, "BARON", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON
		["GrpNATO_RAP",  8, "RAPTOR", "ColorBlue"] spawn f_fnc_localGroupMarker;		//RAPTOR
		["GrpNATO_PHO",  8, "PHOENIX", "ColorBlue"] spawn f_fnc_localGroupMarker;		//PHOENIX
		["GrpNATO_THU",  8, "THUNDERBIRD", "ColorBlue"] spawn f_fnc_localGroupMarker;	//THUNDERBIRD

		// Divers
		["GrpNATO_DT1",  4, "DT1", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitNATO_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UNITNATO_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

};

// ====================================================================================

if (true) exitWith {};
