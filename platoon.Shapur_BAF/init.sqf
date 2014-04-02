// ====================================================================================
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// F3 - Disable Saving and Auto Saving
// http://ferstaberinde.com/f3/en//index.php?title=Disable_Saving_and_Auto_Saving
// Generally leave [false, false];

enableSaving [false, false];

// ====================================================================================

// F3 - Re-spawn INIT
// ** Don't mess with this! **

f_respawnINIT = player addEventHandler ["killed", {_this execVM "init_onPlayerRespawn.sqf"}];

// ====================================================================================

// F3 - Mission Maker Teleport
// Might be helpful during testing but comment out these two lines before exporting the mission,
// though I always use the camera feature from the menu with "move player to cursor position"

// f_missionMakerTeleport = 0;
// [] execVM "f\common\f_missionMakerTeleport.sqf";

// ====================================================================================

// F3 - Briefing
// This calls the briefing script, edit them in f\common\f_briefing{blu/red/green}.sqf

f_script_briefing = [] execVM "briefing.sqf";

// ====================================================================================

// F3 - Mission Conditions Selector
// http://ferstaberinde.com/f3/en//index.php?title=Mission_Conditions_Selector
// If you use these the admin will decide weather and time when starting the mission.
// If you have a specific time and weather setting, comment out.
// If you want your mission to be playable in different settings, leave enabled
// Associated parameters are in the description.ext file.

[] execVM "f\common\f_setMissionConditions.sqf";

// ====================================================================================

// F3 - F3 Folk ARPS Group IDs
// Corrects squad names in chat messages.
// We don't use chat in missions, instead we use TFR/ACRE2.
	// Note: NOLUX, are we going to update f\common\folk_setGroupIDs.sqf anyways?

f_script_setGroupIDs = [] execVM "f\common\folk_setGroupIDs.sqf";

// ====================================================================================

// F3 - Buddy Team Colours
// Auto assigns buddy FT colours. If you want to edit these for specific new unit types
// and you want to use this system, edit associated file.

f_script_setTeamColours = [] execVM "f\common\f_setTeamColours.sqf";

// ====================================================================================

// F3 - Fireteam Member Markers
// Shows the unit in your group in the map to create situational awareness.
// Sometimes useful in Urban environments.
// We leave it generally disabled.

// [] spawn f_fnc_SetLocalFTMemberMarkers;

// ====================================================================================

// F3 - F3 Folk ARPS Group Markers
// http://ferstaberinde.com/f3/en//index.php?title=F3_Folk_ARPS_Group_Markers
// This places the group markers on the map.
// If you add new groups, edit the associated file as well!
// Else they won't have a nice marker.

[] execVM "f\common\folk_setLocalGroupMarkers.sqf";

// ====================================================================================

// F3 - F3 Common Local Variables
// http://ferstaberinde.com/f3/en//index.php?title=F3_Common_Local_Variables
// WARNING: DO NOT DISABLE THIS COMPONENT

f_script_setLocalVars = [] execVM "f\common\f_setLocalVars.sqf";

// ====================================================================================

// F3 - Multiplayer Ending Controller
// Used to display nice endings.
// I don't think we really touch this.

f_endSelected = -1;
[] execVM "f\common\f_mpEndSetUp.sqf";

// ====================================================================================

// F3 - Automatic Body Removal
// http://ferstaberinde.com/f3/en//index.php?title=Automatic_Body_Removal
// Remove lag by deleting corpses. Useful for longer mission where lots of AI die.
// ** Comment out during TvT to save on lag **

 f_removeBodyDelay = 300;
 f_removeBodyDistance = 100;
// Exclude certain named groups. Example for grPNO_CSL: f_doNotRemoveBodies = [GropNO_CSL]
 f_doNotRemoveBodies = [];
 [] execVM "f\server\f_addRemoveBodyEH.sqf";

// ====================================================================================

// F3 - Dynamic View Distance
// http://ferstaberinde.com/f3/en//index.php?title=Dynamic_View_Distance
// Force view distances, might be useful if still experiencing lag.
// Seems not necessary ATM.

// f_viewDistance_default = 1250;
// f_viewDistance_tank = 2000;
// f_viewDistance_rotaryWing = 2500;
// f_viewDistance_fixedWing = 5000;
// [] execVM "f\common\f_addSetViewDistanceEHs.sqf";

// ====================================================================================

// F3 - Authorised Crew Check
// Force members out of certain vehicles.
// Not necessary with PA play style.

// VehicleName addEventhandler ["GetIn", {[_this,[UnitName1,UnitName2]] execVM "f\common\f_isAuthorisedCrew.sqf"}];

// ====================================================================================

// F3 - Authorised Crew Type Check
// http://ferstaberinde.com/f3/en//index.php?title=Authorised_Crew_Type_Check
// See above.

// VehicleName addEventhandler ["GetIn", {[_this,["UnitType1","UnitType2"]] execVM "f\common\f_isAuthorisedCrewType.sqf"}];

// ====================================================================================

// F3 - Casualties Cap
// http://ferstaberinde.com/f3/en//index.php?title=Casualties_Cap
// End mission when _x% of a side is dead. Generally not used.
// Might be helpful in a holdout mission.

// [[GroupName],100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";

// BLUFOR > NATO
// [BLUFOR,100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";

// OPFOR > CSAT
// [OPFOR,100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";

// INDEPENDENT > AAF
// [INDEPENDENT,100,1] execVM "f\server\f_endOnCasualtiesCap.sqf";

// ====================================================================================

// F3 - Casualties Cap (Advanced)
// http://ferstaberinde.com/f3/en//index.php?title=Casualties_Cap_(Advanced)

// BLUFOR
// [BLUFOR,100] execVM "f\server\f_casualtiesCapAdv.sqf";

// OPFOR
// [OPFOR,100] execVM "f\server\f_casualtiesCapAdv.sqf";

// INDEPENDENT
// [INDEPENDENT,100] execVM "f\server\f_casualtiesCapAdv.sqf";

// ====================================================================================

// F3 - AI Skill Selector (Coop)
// http://ferstaberinde.com/f3/en//index.php?title=AI_Skill_Selector_(A%26D_and_Coop)
// I don't think we'll be using this yet
	// We might need to do some testing with this, though.

// f_isFriendly = [west,civilian];
// [] execVM "f\server\f_setAISkill.sqf";

// ====================================================================================

// F3 - AI Skill Selector (A&D)

// f_isFriendlyToBLU_RES = 1;
// f_isFriendlyToBLU_CIV = 1;
// [] execVM "f\server\f_setAISkill.sqf";

// ====================================================================================

// F3 - Name Tags
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// Is there a way to enable this only at mission start?
// It seems unnecessary once mission has started.

// f_showGroup_Nametags = true;			// Display unit's group (uses GroupID)
// f_showDistance_Nametags = true;	// Show distance to player
// f_showVehicle_Nametags = true;		// Show vehicle player is in
// [20] execVM "f\common\f_nametags.sqf";

// ====================================================================================

// F3 - Group E&E Check
// http://ferstaberinde.com/f3/en//index.php?title=Group_E%26E_Check
// ** Only used for specific mission type, please ignore **
	// Can we remove this from framework?

// [GroupName,ObjectName,100,1] execVM "f\server\f_groupEandECheck.sqf";

// ====================================================================================

// F3 - ORBAT Notes
// Lists ORBAT.
// Editing this is not necessary.

[] execVM "f\common\f_orbatNotes.sqf";

// ====================================================================================

// F3 - Join Group Action
// Let's you link up with other groups and fireteams, leave enabled.

[true] execVM "f\common\f_groupJoinAddOption.sqf";

// ====================================================================================

// F3 - Mission Timer/Safe Start
// Add a Weapons Safe timer to mission start to evade fuck-ups at mission start.
// Edit timer values in associated file.

[] execVM "f\common\f_safeStart.sqf";

// ====================================================================================

// F3 - AI Unit Caching
// http://ferstaberinde.com/f3/en//index.php?title=AI_Caching
// The real magic of the F3 framework.
// Make sure mission is settled in _n seconds, where _n below should be replaced by that number in seconds. 
// i.e. "[30] spawn f_fnc_cInit;"

[_n] spawn f_fnc_cInit;

// Feed all units medical items for xMed.

	for [{_i=0}, {_i<8}, {_i=_i+1}] do
	{
		player addItem "x39_bandage";
	};
	for [{_i=0}, {_i<2}, {_i=_i+1}] do
	{
		player addItem "x39_medikit";
	};
	for [{_i=0}, {_i<4}, {_i=_i+1}] do
	{
		player addItem "x39_epinephrine";
	};
	for [{_i=0}, {_i<5}, {_i=_i+1}] do
	{
		player addItem "x39_morphine";
	};