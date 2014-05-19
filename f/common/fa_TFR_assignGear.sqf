// F3 - ACRE Assign Gear
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DEFINE EQUIPMENT TABLES
// The blocks of code below identifies equipment for this faction
//
// Defined loadouts:
//		co		- commander
//		dc 		- deputy commander
//		m 		- medic
//		ftl		- fire team leader
//		ar 		- automatic rifleman
//		aar		- assistant automatic rifleman
//		rat		- rifleman (AT)
//		samg	- surface to air missile gunner
//		samag	- surface to air missile assistant
//		mmgg	- medium mg gunner
//		mmgag	- medium mg assistant
//		hmgg	- heavy mg gunner (deployable)
//		hmgag	- heavy mg assistant (deployable)
//		matg	- medium AT gunner
//		matag	- medium AT assistant
//		hatg	- heavy AT gunner
//		hatg	- heavy AT assistant
//		mtrg	- mortar gunner (deployable)
//		mtrag	- mortar assistant (deployable)
//		sn		- sniper
//		sp		- spotter
//		c		- ground vehicle crew
//		p		- air vehicle pilots
//		eng		- engineers
//
//		r 		- rifleman
//		car		- carabineer
//		smg		- submachinegunner
//		gren	- grenadier
//
//		v_car	- car/4x4
//		v_tr	- truck
//		v_ifv	- ifv
//
// ====================================================================================

// GENERAL EQUIPMENT USED BY MULTIPLE CLASSES

switch ((player call BIS_fnc_objectSide)) do { //longrange
    case (west): {_radio1 = "tf_rt1523g";};
    case (east): {_radio1 = "tf_mr3000";};
    default {_radio1 = "tf_anprc155";};
switch ((player call BIS_fnc_objectSide)) do { //shortrange
	case (west): {_radio2 = "tf_anprc152";};
	case (east): {_radio2 = "tf_fadak";};
	default {_radio2 = "tf_anprc148jem";};
switch ((player call BIS_fnc_objectSide)) do {} //rifradio
	case (west): {_radio3 = "tf_rf7800str";};
	case (east): {_radio3 = "tf_pnr1000a";};
	default {_radio3 = "tf_anprc154";};

// ====================================================================================

// INTERPRET PASSED VARIABLES
// The following inrerprets formats what has been passed to this script element

_typeofUnit = toLower (_this select 0);			// Tidy input for SWITCH/CASE statements, expecting something like : r = Rifleman, co = Commanding Officer, rat = Rifleman (AT)
_unit = _this select 1;					// expecting name of unit; originally passed by using 'this' in unit init

// ====================================================================================

// DELETE ALL RADIOS
// All previously assigned radios must be deleted, in order to set the radio frequencies per side.

_clearRadiosHandle = _this execVM "f\common\fa_TFR_clearRadios.sqf";

waitUntil{scriptDone _clearRadiosHandle};

// ====================================================================================

// DEFINE UNIT TYPE LOADOUTS
// The following blocks of code define loadouts for each type of unit (the unit type
// is passed to the script in the first variable)

switch (_typeofUnit) do
{

// ====================================================================================

// LOADOUT: COMMANDER
	case "co":
	{
		_backpackItems = backpackItems player;   //backup bp items
		removeBackpack _unit;
		_unit addBackpack _radio1;
		{player addItemToBackpack _x;   } forEach _backpackItems; //add old bp items to new radio bp
		_unit addItem _radio2;
	};

// LOADOUT: DEPUTY COMMANDER AND SQUAD LEADER
	case "dc":
	{
		_backpackItems = backpackItems player;   //backup bp items
		removeBackpack _unit;
		_unit addBackpack _radio1;
		{player addItemToBackpack _x;   } forEach _backpackItems; //add old bp items to new radio bp
		_unit addItem _radio2;
	};

// LOADOUT: MEDIC
	case "m":
	{
		_unit addItem _radio2;
	};

// LOADOUT: FIRE TEAM LEADER
	case "ftl":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};


// LOADOUT: AUTOMATIC RIFLEMAN
	case "ar":
	{
		_unit addItem _radio3;
	};

// LOADOUT: ASSISTANT AUTOMATIC RIFLEMAN
	case "aar":
	{
		_unit addItem _radio3;
	};

// LOADOUT: RIFLEMAN (AT)
	case "rat":
	{
		_unit addItem _radio3;
	};

// LOADOUT: SURFACE TO AIR MISSILE GUNNER
	case "samg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit additem _radio2;
	};

// LOADOUT: ASSISTANT SURFACE TO AIR MISSILE GUNNER
	case "samag":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: MEDIUM MG GUNNER
	case "mmgg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: MEDIUM MG ASSISTANT GUNNER
	case "mmgag":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: HEAVY MG GUNNER
	case "hmgg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: HEAVY MG ASSISTANT GUNNER
	case "hmgag":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: MEDIUM AT GUNNER
	case "matg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: MEDIUM AT ASSISTANT GUNNER
	case "matag":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: HEAVY AT GUNNER
	case "hatg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: HEAVY AT ASSISTANT GUNNER
	case "hatag":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: MORTAR GUNNER
	case "mtrg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: MORTAR ASSISTANT GUNNER
	case "mtrag":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: SNIPER
	case "sn":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: SPOTTER
	case "sp":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio2;
	};

// LOADOUT: GROUND VEHICLE CREW
	case "c":
	{
		if(leader group _unit == _unit) then {
		_backpackItems = backpackItems player;   //backup bp items
		removeBackpack _unit;
		_unit addBackpack _radio1;
		{player addItemToBackpack _x;   } forEach _backpackItems; //add old bp items to new radio bp
		_unit addItem _radio2;
			};
		if not (leader group _unit == _unit) then {
		_unit addItem _radio3;
			};
	};

// LOADOUT: AIR VEHICLE PILOTS
	case "p":
	{
		if(leader group _unit == _unit) then {
		_backpackItems = backpackItems player;   //backup bp items
		removeBackpack _unit;
		_unit addBackpack _radio1;
		{player addItemToBackpack _x;   } forEach _backpackItems; //add old bp items to new radio bp
			};
		_unit addItem _radio2;
	};

// LOADOUT: ENGINEER
	case "eng":
	{
		if(leader group _unit == _unit) then {
		_backpackItems = backpackItems player;   //backup bp items
		removeBackpack _unit;
		_unit addBackpack _radio1;
		{player addItemToBackpack _x;   } forEach _backpackItems; //add old bp items to new radio bp
			};
		if not (leader group _unit == _unit) then {
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		}
		_unit addItem _radio2;
	};

// LOADOUT: RIFLEMAN
	case "r":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio3;
	};

// LOADOUT: CARABINEER
	case "car":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
	};

// LOADOUT: SUBMACHINEGUNNER
	case "smg":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio3;
	};

// LOADOUT: GRENADIER
	case "gren":
	{
		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box.";
		_unit addItem _radio3;
	};

// CARGO: CAR - room for 10 weapons and 50 cargo items
	case "v_car":
	{
		_unit addItemCargoGlobal [_radio2, 1];
		_unit addItemCargoGlobal [_radio1, 1];
	};

// CARGO: TRUCK - room for 50 weapons and 200 cargo items
	case "v_tr":
	{
		_unit addItemCargoGlobal [_radio2, 4];
		_unit addItemCargoGlobal [_radio1, 4];
	};

// CARGO: IFV - room for 10 weapons and 100 cargo items
	case "v_ifv":
	{
		_unit addItemCargoGlobal [_radio3, 4];
		_unit addItemCargoGlobal [_radio2, 2];
		_unit addItemCargoGlobal [_radio1, 2];
	};


// LOADOUT: DEFAULT/UNDEFINED (use RIFLEMAN)
   default
   {
   		hint "If you believe you should have a LR radio, confirm with command, then grab one from a box."
   		_unit addItem _radio3;
		if (true) exitwith {player globalchat format ["DEBUG (f\common\folk_assignGear_acre.sqf): Unit = %1. Gear template %2 does not exist, used Rifleman instead.",_unit,_typeofunit]};
   };


// ====================================================================================

// END SWITCH FOR DEFINE UNIT TYPE LOADOUTS
};

// ====================================================================================

// ENSURE UNIT HAS CORRECT WEAPON SELECTED ON SPAWNING
_unit selectweapon primaryweapon _unit;

// ====================================================================================
