// F3 - Folk Group Markers
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
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

		["GrpNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpNATO_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpNATO_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpNATO_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT3", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT4", 3, "MAT4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpNATO_HAT1", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;

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

		//FAC
		["GrpNATO_FAC1",  7, "FAC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_FAC2",  7, "FAC2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		//UAV
		["GrpNATO_UAV1",  7, "UAV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_UAV2",  7, "UAV2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_UAV3",  7, "UAV3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		//TIL Tilt rotor crews
		["GrpNATO_TIL1",  7, "TIL1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TIL2",  7, "TIL2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TIL3",  7, "TIL3", "ColorOrange"] spawn f_fnc_localGroupMarker;

		//TIL Transport plane crews
		["GrpNATO_TP",  7, "TRANSPORT PLANE", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpNATO_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Tank Division
 		["GrpNATO_PIKE1",  7, "PIKE1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PIKE2",  7, "PIKE2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PIKE3",  7, "PIKE3", "ColorRed"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_HAL1",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HAL2",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HAL3",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_SPE1",  7, "SPEAR1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SPE2",  7, "SPEAR2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SPE3",  7, "SPEAR3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpNATO_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

  		// MEDEVAC choppers
   		["GrpNATO_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, Heli CAS
		["GrpNATO_CYC1",  8, "CYCLONE1", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpNATO_CYC2",  8, "CYCLONE2", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpNATO_CYC3",  8, "CYCLONE3", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpNATO_HUR1",  8, "HURRICANE1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpNATO_HUR2",  8, "HURRICANE2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpNATO_HUR3",  8, "HURRICANE3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpNATO_TWI1",  8, "TWISTER1", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpNATO_TWI2",  8, "TWISTER2", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpNATO_TWI3",  8, "TWISTER3", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER

		// Air Division, Heli scout
		["GrpNATO_SCO1",  8, "SCOUT1", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpNATO_SCO2",  8, "SCOUT2", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpNATO_SCO3",  8, "SCOUT3", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT

		// Air Division, Fast Air A2A
		["GrpNATO_FOI",  8, "FOIL", "ColorBlue"] spawn f_fnc_localGroupMarker;				//FOIL A2A
		["GrpNATO_RAP",  8, "RAPIER", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON A2A
		["GrpNATO_SCI",  8, "SCIMITAR", "ColorBlue"] spawn f_fnc_localGroupMarker;			//SCIMITAR A2A
		["GrpNATO_EPE",  8, "EPEE", "ColorBlue"] spawn f_fnc_localGroupMarker;				//EPEE A2A

		// Air Division, Fast Air CAS
		["GrpNATO_FAL",  8, "FALCHION", "ColorBlue"] spawn f_fnc_localGroupMarker;			//FALCHION CAS
		["GrpNATO_CUT",  8, "CUTLASS", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CUTLASS CAS
		["GrpNATO_SAB",  8, "SABER", "ColorBlue"] spawn f_fnc_localGroupMarker;				//SABER CAS
		["GrpNATO_CLA",  8, "CLAYMORE", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CLAYMORE CAS

		// Divers
		["GrpNATO_DT1",  4, "DT1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT2",  4, "DT2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT3",  4, "DT3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT4",  4, "DT4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitNATO_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

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

		["GrpFIA_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpFIA_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpFIA_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpFIA_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpFIA_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT3", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MAT4", 3, "MAT4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpFIA_HAT1", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;

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

		//FAC
		["GrpFIA_FAC1",  7, "FAC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_FAC2",  7, "FAC2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		//UAV
		["GrpFIA_UAV1",  7, "UAV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_UAV2",  7, "UAV2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_UAV3",  7, "UAV3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		//TIL Tilt rotor crews
		["GrpFIA_TIL1",  7, "TIL1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_TIL2",  7, "TIL2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_TIL3",  7, "TIL3", "ColorOrange"] spawn f_fnc_localGroupMarker;

		//TIL Transport plane crews
		["GrpFIA_TP",  7, "TRANSPORT PLANE", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpFIA_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpFIA_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Tank Division
 		["GrpFIA_PIKE1",  7, "PIKE1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_PIKE2",  7, "PIKE2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_PIKE3",  7, "PIKE3", "ColorRed"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_HAL1",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HAL2",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_HAL3",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpFIA_SPE1",  7, "SPEAR1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_SPE2",  7, "SPEAR2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_SPE3",  7, "SPEAR3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpFIA_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpFIA_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpFIA_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

  		// MEDEVAC choppers
   		["GrpFIA_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpFIA_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, Heli CAS
		["GrpFIA_CYC1",  8, "CYCLONE1", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpFIA_CYC2",  8, "CYCLONE2", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpFIA_CYC3",  8, "CYCLONE3", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpFIA_HUR1",  8, "HURRICANE1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpFIA_HUR2",  8, "HURRICANE2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpFIA_HUR3",  8, "HURRICANE3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpFIA_TWI1",  8, "TWISTER1", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpFIA_TWI2",  8, "TWISTER2", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpFIA_TWI3",  8, "TWISTER3", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER

		// Air Division, Heli scout
		["GrpFIA_SCO1",  8, "SCOUT1", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpFIA_SCO2",  8, "SCOUT2", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpFIA_SCO3",  8, "SCOUT3", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT

		// Air Division, Fast Air A2A
		["GrpFIA_FOI",  8, "FOIL", "ColorBlue"] spawn f_fnc_localGroupMarker;				//FOIL A2A
		["GrpFIA_RAP",  8, "RAPIER", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON A2A
		["GrpFIA_SCI",  8, "SCIMITAR", "ColorBlue"] spawn f_fnc_localGroupMarker;			//SCIMITAR A2A
		["GrpFIA_EPE",  8, "EPEE", "ColorBlue"] spawn f_fnc_localGroupMarker;				//EPEE A2A

		// Air Division, Fast Air CAS
		["GrpFIA_FAL",  8, "FALCHION", "ColorBlue"] spawn f_fnc_localGroupMarker;			//FALCHION CAS
		["GrpFIA_CUT",  8, "CUTLASS", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CUTLASS CAS
		["GrpFIA_SAB",  8, "SABER", "ColorBlue"] spawn f_fnc_localGroupMarker;				//SABER CAS
		["GrpFIA_CLA",  8, "CLAYMORE", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CLAYMORE CAS

		// Divers
		["GrpFIA_DT1",  4, "DT1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DT2",  4, "DT2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DT3",  4, "DT3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpFIA_DT4",  4, "DT4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitFIA_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitFIA_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

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

		["GrpCSAT_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpCSAT_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT3", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MAT4", 3, "MAT4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpCSAT_HAT1", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;

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

		//FAC
		["GrpCSAT_FAC1",  7, "FAC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_FAC2",  7, "FAC2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		//UAV
		["GrpCSAT_UAV1",  7, "UAV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_UAV2",  7, "UAV2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_UAV3",  7, "UAV3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		//TIL Tilt rotor crews
		["GrpCSAT_TIL1",  7, "TIL1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TIL2",  7, "TIL2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_TIL3",  7, "TIL3", "ColorOrange"] spawn f_fnc_localGroupMarker;

		//TIL Transport plane crews
		["GrpCSAT_TP",  7, "TRANSPORT PLANE", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpCSAT_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Tank Division
 		["GrpCSAT_PIKE1",  7, "PIKE1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_PIKE2",  7, "PIKE2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_PIKE3",  7, "PIKE3", "ColorRed"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_HAL1",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HAL2",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_HAL3",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpCSAT_SPE1",  7, "SPEAR1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_SPE2",  7, "SPEAR2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_SPE3",  7, "SPEAR3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpCSAT_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpCSAT_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpCSAT_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpCSAT_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpCSAT_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

  		// MEDEVAC choppers
   		["GrpCSAT_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, Heli CAS
		["GrpCSAT_CYC1",  8, "CYCLONE1", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpCSAT_CYC2",  8, "CYCLONE2", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpCSAT_CYC3",  8, "CYCLONE3", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpCSAT_HUR1",  8, "HURRICANE1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpCSAT_HUR2",  8, "HURRICANE2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpCSAT_HUR3",  8, "HURRICANE3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpCSAT_TWI1",  8, "TWISTER1", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpCSAT_TWI2",  8, "TWISTER2", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpCSAT_TWI3",  8, "TWISTER3", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER

		// Air Division, Heli scout
		["GrpCSAT_SCO1",  8, "SCOUT1", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpCSAT_SCO2",  8, "SCOUT2", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpCSAT_SCO3",  8, "SCOUT3", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT

		// Air Division, Fast Air A2A
		["GrpCSAT_FOI",  8, "FOIL", "ColorBlue"] spawn f_fnc_localGroupMarker;				//FOIL A2A
		["GrpCSAT_RAP",  8, "RAPIER", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON A2A
		["GrpCSAT_SCI",  8, "SCIMITAR", "ColorBlue"] spawn f_fnc_localGroupMarker;			//SCIMITAR A2A
		["GrpCSAT_EPE",  8, "EPEE", "ColorBlue"] spawn f_fnc_localGroupMarker;				//EPEE A2A

		// Air Division, Fast Air CAS
		["GrpCSAT_FAL",  8, "FALCHION", "ColorBlue"] spawn f_fnc_localGroupMarker;			//FALCHION CAS
		["GrpCSAT_CUT",  8, "CUTLASS", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CUTLASS CAS
		["GrpCSAT_SAB",  8, "SABER", "ColorBlue"] spawn f_fnc_localGroupMarker;				//SABER CAS
		["GrpCSAT_CLA",  8, "CLAYMORE", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CLAYMORE CAS

		// Divers
		["GrpCSAT_DT1",  4, "DT1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DT2",  4, "DT2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DT3",  4, "DT3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpCSAT_DT4",  4, "DT4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitCSAT_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitCSAT_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
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

		["GrpAAF_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpAAF_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpAAF_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpAAF_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpAAF_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT3", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MAT4", 3, "MAT4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpAAF_HAT1", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;

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

		//FAC
		["GrpAAF_FAC1",  7, "FAC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_FAC2",  7, "FAC2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		//UAV
		["GrpAAF_UAV1",  7, "UAV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_UAV2",  7, "UAV2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_UAV3",  7, "UAV3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		//TIL Tilt rotor crews
		["GrpAAF_TIL1",  7, "TIL1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TIL2",  7, "TIL2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_TIL3",  7, "TIL3", "ColorOrange"] spawn f_fnc_localGroupMarker;

		//TIL Transport plane crews
		["GrpAAF_TP",  7, "TRANSPORT PLANE", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpAAF_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpAAF_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Tank Division
 		["GrpAAF_PIKE1",  7, "PIKE1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_PIKE2",  7, "PIKE2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_PIKE3",  7, "PIKE3", "ColorRed"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_HAL1",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HAL2",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_HAL3",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpAAF_SPE1",  7, "SPEAR1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_SPE2",  7, "SPEAR2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_SPE3",  7, "SPEAR3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpAAF_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpAAF_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpAAF_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpAAF_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpAAF_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

  		// MEDEVAC choppers
   		["GrpAAF_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpAAF_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, Heli CAS
		["GrpAAF_CYC1",  8, "CYCLONE1", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpAAF_CYC2",  8, "CYCLONE2", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpAAF_CYC3",  8, "CYCLONE3", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpAAF_HUR1",  8, "HURRICANE1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpAAF_HUR2",  8, "HURRICANE2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpAAF_HUR3",  8, "HURRICANE3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpAAF_TWI1",  8, "TWISTER1", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpAAF_TWI2",  8, "TWISTER2", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpAAF_TWI3",  8, "TWISTER3", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER

		// Air Division, Heli scout
		["GrpAAF_SCO1",  8, "SCOUT1", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpAAF_SCO2",  8, "SCOUT2", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpAAF_SCO3",  8, "SCOUT3", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT

		// Air Division, Fast Air A2A
		["GrpAAF_FOI",  8, "FOIL", "ColorBlue"] spawn f_fnc_localGroupMarker;				//FOIL A2A
		["GrpAAF_RAP",  8, "RAPIER", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON A2A
		["GrpAAF_SCI",  8, "SCIMITAR", "ColorBlue"] spawn f_fnc_localGroupMarker;			//SCIMITAR A2A
		["GrpAAF_EPE",  8, "EPEE", "ColorBlue"] spawn f_fnc_localGroupMarker;				//EPEE A2A

		// Air Division, Fast Air CAS
		["GrpAAF_FAL",  8, "FALCHION", "ColorBlue"] spawn f_fnc_localGroupMarker;			//FALCHION CAS
		["GrpAAF_CUT",  8, "CUTLASS", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CUTLASS CAS
		["GrpAAF_SAB",  8, "SABER", "ColorBlue"] spawn f_fnc_localGroupMarker;				//SABER CAS
		["GrpAAF_CLA",  8, "CLAYMORE", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CLAYMORE CAS

		// Divers
		["GrpAAF_DT1",  4, "DT1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DT2",  4, "DT2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DT3",  4, "DT3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpAAF_DT4",  4, "DT4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitAAF_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitAAF_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
	};

// ====================================================================================

// MARKERS: BLUFOR > RANGERS
// Markers seen by players in RANGER slots.

	case "mas_usa_rang":
	{
		//Infantry Platoon
["GrpNATO_CO", 0, "CO", "ColorYellow"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DC", 0, "XO", "ColorYellow"] spawn f_fnc_localGroupMarker;

		["GrpNATO_ASL", 0, "ASL", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A1", 1, "A1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A2", 1, "A2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_A3", 1, "A3", "ColorRed"] spawn f_fnc_localGroupMarker;

		["GrpNATO_BSL", 0, "BSL", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B1", 1, "B1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B2", 1, "B2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_B3", 1, "B3", "ColorBlue"] spawn f_fnc_localGroupMarker;

		["GrpNATO_CSL", 0, "CSL", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C1", 1, "C1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C2", 1, "C2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_C3", 1, "C3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		["GrpNATO_DSL", 0, "DSL", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D1", 1, "D1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D2", 1, "D2", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_D3", 1, "D3", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Weapon Teams
		["GrpNATO_MMG1", 2, "MMG1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG2", 2, "MMG2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG3", 2, "MMG3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MMG4", 2, "MMG4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpNATO_MAT1", 3, "MAT1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT2", 3, "MAT2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT3", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MAT4", 3, "MAT4", "ColorOrange"] spawn f_fnc_localGroupMarker;

		["GrpNATO_HAT1", 3, "MAT3", "ColorOrange"] spawn f_fnc_localGroupMarker;

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

		//FAC
		["GrpNATO_FAC1",  7, "FAC1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_FAC2",  7, "FAC2", "ColorBlue"] spawn f_fnc_localGroupMarker;

		//UAV
		["GrpNATO_UAV1",  7, "UAV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_UAV2",  7, "UAV2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_UAV3",  7, "UAV3", "ColorGreen"] spawn f_fnc_localGroupMarker;

		//TIL Tilt rotor crews
		["GrpNATO_TIL1",  7, "TIL1", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TIL2",  7, "TIL2", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_TIL3",  7, "TIL3", "ColorOrange"] spawn f_fnc_localGroupMarker;

		//TIL Transport plane crews
		["GrpNATO_TP",  7, "TRANSPORT PLANE", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Do these mark squads or vehicles? Worth it for motorized missions.
 		["GrpNATO_IFV1",  7, "IFV1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV2",  7, "IFV2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV3",  7, "IFV3", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV4",  7, "IFV4", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV5",  7, "IFV5", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV6",  7, "IFV6", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV7",  7, "IFV7", "ColorOrange"] spawn f_fnc_localGroupMarker;
		["GrpNATO_IFV8",  7, "IFV8", "ColorOrange"] spawn f_fnc_localGroupMarker;

		// Tank Division
 		["GrpNATO_PIKE1",  7, "PIKE1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PIKE2",  7, "PIKE2", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_PIKE3",  7, "PIKE3", "ColorRed"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_HAL1",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HAL2",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_HAL3",  7, "HALBERD1", "ColorBlue"] spawn f_fnc_localGroupMarker;

 		["GrpNATO_SPE1",  7, "SPEAR1", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SPE2",  7, "SPEAR2", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_SPE3",  7, "SPEAR3", "ColorGreen"] spawn f_fnc_localGroupMarker;

 		// Air Division, Transport Helicopters, callsigns not assigned to marker.
		["GrpNATO_TH1",  8, "TH1", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH2",  8, "TH2", "ColorRed"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH3",  8, "TH3", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH4",  8, "TH4", "ColorBlue"] spawn f_fnc_localGroupMarker;
 		["GrpNATO_TH5",  8, "TH5", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH6",  8, "TH6", "ColorGreen"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH7",  8, "TH7", "ColorBlack"] spawn f_fnc_localGroupMarker;
  		["GrpNATO_TH8",  8, "TH8", "ColorBlack"] spawn f_fnc_localGroupMarker;

  		// MEDEVAC choppers
   		["GrpNATO_MH1",  8, "BANDAID1", "ColorBlack"] spawn f_fnc_localGroupMarker;
		["GrpNATO_MH2",  8, "BANDAID2", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Air Division, Heli CAS
		["GrpNATO_CYC1",  8, "CYCLONE1", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpNATO_CYC2",  8, "CYCLONE2", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpNATO_CYC3",  8, "CYCLONE3", "ColorRed"] spawn f_fnc_localGroupMarker;			//CYCLONE
		["GrpNATO_HUR1",  8, "HURRICANE1", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpNATO_HUR2",  8, "HURRICANE2", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpNATO_HUR3",  8, "HURRICANE3", "ColorBlue"] spawn f_fnc_localGroupMarker;		//HURRICANE
		["GrpNATO_TWI1",  8, "TWISTER1", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpNATO_TWI2",  8, "TWISTER2", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER
		["GrpNATO_TWI3",  8, "TWISTER3", "ColorGreen"] spawn f_fnc_localGroupMarker;		//TWISTER

		// Air Division, Heli scout
		["GrpNATO_SCO1",  8, "SCOUT1", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpNATO_SCO2",  8, "SCOUT2", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT
		["GrpNATO_SCO3",  8, "SCOUT3", "ColorBlack"] spawn f_fnc_localGroupMarker;			//SCOUT

		// Air Division, Fast Air A2A
		["GrpNATO_FOI",  8, "FOIL", "ColorBlue"] spawn f_fnc_localGroupMarker;				//FOIL A2A
		["GrpNATO_RAP",  8, "RAPIER", "ColorBlue"] spawn f_fnc_localGroupMarker;			//BARON A2A
		["GrpNATO_SCI",  8, "SCIMITAR", "ColorBlue"] spawn f_fnc_localGroupMarker;			//SCIMITAR A2A
		["GrpNATO_EPE",  8, "EPEE", "ColorBlue"] spawn f_fnc_localGroupMarker;				//EPEE A2A

		// Air Division, Fast Air CAS
		["GrpNATO_FAL",  8, "FALCHION", "ColorBlue"] spawn f_fnc_localGroupMarker;			//FALCHION CAS
		["GrpNATO_CUT",  8, "CUTLASS", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CUTLASS CAS
		["GrpNATO_SAB",  8, "SABER", "ColorBlue"] spawn f_fnc_localGroupMarker;				//SABER CAS
		["GrpNATO_CLA",  8, "CLAYMORE", "ColorBlue"] spawn f_fnc_localGroupMarker;			//CLAYMORE CAS

		// Divers
		["GrpNATO_DT1",  4, "DT1", "ColorRed"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT2",  4, "DT2", "ColorBlue"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT3",  4, "DT3", "ColorGreen"] spawn f_fnc_localGroupMarker;
		["GrpNATO_DT4",  4, "DT4", "ColorBlack"] spawn f_fnc_localGroupMarker;

		// Specialists (add JTAC?)
		["UnitNATO_CO_M", 0, "COM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DC_M", 0, "DCM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_ASL_M", 0, "AM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_BSL_M", 0, "BM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_CSL_M", 0, "CM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;
		["UnitNATO_DSL_M", 0, "DM", "ColorBlack"] spawn f_fnc_localSpecialistMarker;

	};

// ====================================================================================

};

// ====================================================================================

if (true) exitWith {};
