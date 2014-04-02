// F3 - Briefing
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// JIP CHECK
// Prevents the script executing until the player has synchronised correctly:

#include "f\common\f_waitForJIP.sqf"

// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

private ["_unitfaction"];

waitUntil {!isnil "f_var_debugMode"};

// ====================================================================================

// DETECT PLAYER FACTION
// The following code detects what faction the player's slot belongs to, and stores
// it in the private variable _unitfaction

_unitfaction = toLower (faction player);

// If the unitfaction is different from the group leader's faction, the latters faction is used
if (_unitfaction != toLower (faction (leader group player))) then {_unitfaction = toLower (faction (leader group player))};



// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Player faction: %1",_unitfaction];
	};

// ====================================================================================

// BRIEFING: BLUFOR > NATO
// The following block of code executes only if the player is in a NATO slot; it
// automatically includes a file which contains the appropriate briefing data.

// ** This needs editing depending on the faction units used. Find faction names under the Config Viewer in-game, possible under 'cfg/factions'.
// BLU_F is standard NATO.
if (_unitfaction == "BLU_F") exitwith {

#include "f\common\f_briefing_nato.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: BLUFOR > FIA
// The following block of code executes only if the player is in a FIA slot; it
// automatically includes a file which contains the appropriate briefing data.

// ** This needs editing depending on the faction units used. Find faction names under the Config Viewer in-game, possible under 'cfg/factions'.
// BLU_G_F is standard FIA.
if (_unitfaction == "BLU_G_F") exitwith {

#include "f\common\f_briefing_fia.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: OPFOR > CSAT
// The following block of code executes only if the player is in a CSAT slot; it
// automatically includes a file which contains the appropriate briefing data.

// ** This needs editing depending on the faction units used. Find faction names under the Config Viewer in-game, possible under 'cfg/factions'.
// OPF_F is standard CSAT.
if (_unitfaction == "OPF_F") exitwith {

#include "f\common\f_briefing_csat.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};
// ====================================================================================

// BRIEFING: INDEPENDENT > AAF
// The following block of code executes only if the player is in a AAF
// slot; it automatically includes a file which contains the appropriate briefing data.

// ** This needs editing depending on the faction units used. Find faction names under the Config Viewer in-game, possible under 'cfg/factions'.
// IND_F is standard AAF.
if (_unitfaction == "IND_F") exitwith {

#include "f\common\f_briefing_aaf.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// BRIEFING: CIVILIAN
// The following block of code executes only if the player is in a CIVILIAN
// slot; it automatically includes a file which contains the appropriate briefing data.

// ** This needs editing depending on the faction units used. Find faction names under the Config Viewer in-game, possible under 'cfg/factions'.
// CIV_F is standard Altis Civillians.
if (_unitfaction == "CIV_F") exitwith {

#include "f\common\f_briefing_civ.sqf"

// DEBUG
	if (f_var_debugMode == 1) then
	{
	player sideChat format ["DEBUG (briefing.sqf): Briefing for %1 slot selected.",_unitfaction];
	};
};

// ====================================================================================

// ERROR CHECKING
// If the faction of the unit cannot be defined, the script exits with an error.

player globalchat format ["DEBUG (briefing.sqf): Faction %1 is not defined.",_unitfaction];