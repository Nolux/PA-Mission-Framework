 ************************************************************************************************************

  Urban Patrol Script
  
  V2.2.0 / 2013-11-12

  © 2013 - Kronzky (kronzky@gmail.com / www.kronzky.info)

 ************************************************************************************************************

  This script allows the creation of randomly moving patrols in a predefined area.

  INSTALLATION:
  Create and save a mission in the editor, and
  copy the file ups.sqf into that mission folder.
  
    e.g. if you mission name was "myUPSMission.Stratis", 
    then the mission folder would be either at:
        \My Documents\ArmA 3 Alpha\missions\myUPSMission.Stratis or 
        \My Documents\ArmA 3 Alpha Other Profiles\[profile name]\missions\myUPSMission.Stratis

	To use the demo mission, copy it into the general mission folder,
	(e.g. \My Documents\ArmA 3 Alpha\missions\UPS.Stratis),
	and open it in the editor.

 ------------------------------------------------------------------------------------------------------------

  Creating a mission with this script requires three steps:

  1. Position the player on the map.

  2. Create a rectangular marker over the area that should be patrolled (e.g. a city).
     Give this marker a name (e.g. "Alpha")

  3. Create as many units (or groups) as you find appropriate, and put the following call
     into the init field of each group leader: nul=[this,"Alpha"] execVM "ups.sqf"

   PLAY THE MISSION!

 ------------------------------------------------------------------------------------------------------------

  Details on each step, and further customization options:

  AREA MARKER

   • The marker should be rectangular. The script will work with a round marker,
     but it won't be an exact representation of the area that is being patrolled.
     If the marker is rotated this will automatically be taken into consideration.
     Color, fill patterns and marker text don't matter.

   • You can have as many different area markers as you wish,
     to have different units patrol different areas. These zones can overlap.

   • Do not to use special symbols in the marker name.
     Underscore ("_") is ok, but most others ("-",":","/", etc.) will cause errors.

   • The marker can be defined via a variable (e.g. area="Alpha"; nul=[this,area] execVM "ups.sqf")

   • The marker position and size can be changed anytime during the mission.
     Units will automatically update their patrol area.

   • By default the area marker is hidden during the mission. 
     To make it visible in the game, use the "SHOWMARKER" option.

   • If you want to avoid the area marker to be seen during the pre-mission briefing,
     you can add the following line to your init.sqf:
     "markername" setMarkerPos [-(getMarkerPos "markername" select 0),-(getMarkerPos "markername" select 1)];

   • You can use a trigger, instead of a markers, to designate the active area.
     In that case the trigger should be named, and the script would be called with the 
     trigger object as the area parameter: e.g. nul=[this,citytrigger] execVM "ups.sqf"

 ------------------------------------------------------------------------------------------------------------
  PATROLLING UNIT

   • The script can be called by any side: BLUFOR, OFPOR, INDEPENDENT or CIVILIANS.

   • It will work with any type of units: Infantry, Armored, cars, choppers, boats and planes.

   • It can be used with single units or groups (only the group leader needs to call the script).
     - If the group leader dies, another member will take over the lead, and continue to patrol.
     - Units don't need to be named or have any waypoints.
     - If the initial position of the unit is outside the assigned marker area it will first start
       moving toward it.
     - The unit parameter can also be an array that contains all members of the patrolling group.
       In that case the array is searched for a living member to lead the patrol group.

   • Patrolling units will make stops of random length (between 10 and 30 seconds) when they reach their
     patrol end points. This can be suppressed via a "NOWAIT" parameter.

   • By default unit will start at the location they've been placed at in the editor.
     If you want the start position to be anywhere within the active area use parameter "RANDOM".

   • You can create a random number of 'clones' of a patrolling unit with the "MIN:n"/"MAX:n" parameters.
     (see details below)

   • Every patrolling group can have a global variable assigned to it which allows you to stop the
     script for that particular group (see "GLOBAL VARIABLES" at the bottom).

   • To display a message ("SECTOR <areaname> CLEARED") when a sector is cleared of a specific side,
     use the "TRIGGER" parameter.

   Only the position of the first two arguments in the script call are crucial: [unit,"markername"].
   The position and capitalization of the other arguments don't matter.

 ------------------------------------------------------------------------------------------------------------

  OPTIONAL ARGUMENTS

	Movement:
  RANDOM      = The initial position of the group will be anywhere within the marker area.
                While this option increases the randomness of the mission, keep in mind that because
                of the unpredictability of positions, some units may be stuck in inaccessable areas.
                Infantry units may also end up on rooftops. In that case they will *stay* at that
                position, instead of patrolling the area.
                nul=[this,"Alpha","RANDOM"] execVM "ups.sqf"
  RANDOMDN    = Only random positions on the ground level will be used.
  RANDOMUP    = Only the top building positions will be used.
                Note: Only building tops that can be accessed via stairs or ladders will be used,
                and the units this way will not move away from their position.
                Only single units can be placed on rooftops! If "RANDOMUP" is used with a group,
                it is ignored.
                Note: Only building tops that can be accessed via stairs or ladders will be used!
                Also - Only single units can be placed on rooftops. 
                If this command is used with a group it will still be placed on ground level.

  NOAI        = By default soldier units will try evasive and flanking maneuvers if they spot an opponent.
                With this switch this behaviour can be turned off. (Units will patrol the
                area normally, and only show the regular AI behaviour as defined by VBS2.)
                nul=[this,"Alpha","NOAI"] execVM "ups.sqf"
  NOFOLLOW    = The patrolling unit will not leave the marker area, not even to pursue spotted enemies.
                Because of the overriding AI behaviour this will not work with 100% reliability with
                team members (who may decide to go after an enemy after all). 
                The team leader though (or a single patrolling unit) will never leave the area.
                nul=[this,"Alpha","NOFOLLOW"] execVM "ups.sqf"
  NOMOVE      = The unit will stay at its initial position until an enemy is spotted, who it will then pursue.
                Once the enemy is killed (or lost) the unit will return to the start position.
                nul=[this,"Alpha","NOMOVE"] execVM "ups.sqf"
  NOSLOW      = By default the units' behaviour is set to "safe" and the speed to "limited".
                With this switch that setting can be turned off (in case the unit's
                behaviour/speed, as defined in the editor should be used).
                this setBehaviour "STEALTH"; nul=[this,"Alpha","NOSLOW"] execVM "ups.sqf"
  NOWAIT      = Do not wait at patrol end points
                nul=[this,"Alpha","NOWAIT"] execVM "ups.sqf"
                
	Clones:
  MIN:x/MAX:y = Creates a random number of 'clones' of the unit or group that's calling the script.
                This increases the randomness of the mission, as even the mission maker himself
                won't know how many enemy units he will have to face.
                The copied units will be of the same type and patrol behaviour as the original ones.
                The number of copies created is between the MIN:x and the MAX:y parameter.
                So if the script is called with "MIN:",3,"MAX:",6 between 3 and 6 copies of the 
                original group will be created.
                Keep in mind that each of of these arguments (MIN & MAX) actually consists of TWO parameters
                that are given to the script: "MIN:",NUMBER and "MAX:",NUMBER.
                This command only works with Infantry units (no vehicles can be cloned).
                If the cloned unit is type "Civilian", then the clones will be random types of "Civilian 1" to 6.
                If only MIN:x is defined MAX will default to the same value as MIN.
                If only MAX:y is defined MIN will default to 1.
                nul=[this,"Alpha","MIN:",3,"MAX:",6] execVM "ups.sqf"
  INIT:s      = NOT AVAILABLE IN ARMA3!

  PREFIX:s    = Prefix to use for cloned units' names. (Default is "UPSCLONE")
                nul=[this,"Alpha","PREFIX:","OPFOR"] execVM "ups.sqf"
                
  SHOWMARKER  = Display the area marker (by default it is hidden at mission start).
                nul=[this,"Alpha","SHOWMARKER"] execVM "ups.sqf"


  NOSLOW      = By default the units' behaviour is set to "safe" and the speed to "limited".
                With this switch that setting can be turned off (in case the unit's
                behaviour/speed, as defined in the editor should be used).
                this setBehaviour "STEALTH"; nul=[this,"Alpha","NOSLOW"] execVM "ups.sqf"

  NOAI        = By default soldier units will try evasive and flanking maneuvers if they spot an opponent.
                With this switch this behaviour can be turned off. (Units will patrol the
                area normally, and only show the regular AI behaviour as defined by ArmA.)
                nul=[this,"Alpha","NOAI"] execVM "ups.sqf"
                
	General:	
  TRIGGER     = Display a message when no more units of the associated side are left in the sector.
                nul=[this,"Alpha","TRIGGER"] execVM "ups.sqf" or

  TRACK       = Displays a marker with the current position, as well as the destination, for each unit.
                (mainly used for testing and debugging missions)
  EMPTY:x     = Normally, the zone is considered empty if no enemy units are left.
                If you want to allow a few leftover units, and still consider it cleared, enter
                the number here.
                nul=[this,"Alpha","EMPTY:",3] execVM "ups.sqf"
  
  DELETE:x    = Delete dead units after the specified number of seconds.
                nul=[this,"Alpha","DELETE:",60] execVM "ups.sqf"


  NAMED       = If you would like to be able to influence a unit's patrolling behavior after the script
                has started, you have to give a unit a name in the editor, and use the "NAMED' parameter
                in the script arguments. This will create a global variable for each patrolling unit/group
                that can then be set by other scripts. (See GLOBAL VARIABLES below.)

  CYCLE:x     = By default there is a 5 second delay between test cycles in this sript.
                If you want a short one (for very crucial or fast moving units for example) or think a
                unit will do fine with a longer one (slow-moving, non-critical units) it can be overridden
                via this argument. (Any units that come across a new "danger situation" will temporarily
                get shorter cycles, independently of this setting.)
                nul=[this,"Alpha","CYCLE:",2] execVM "ups.sqf"

 ************************************************************************************************************

  TECHNICAL NOTES

    The "SECTOR CLEARED" message is generated by a trigger that covers the active area.
    This trigger is automatically created by the script, and assigned to any enemy units patrolling.
    In order to catch any path finding 'excursions' the AI may make, as well as any flanking moves,
    the trigger area is 1.5 times bigger than the actual marker area.
    (That way there won't be any false messages in case an AI temporarily leaves the active area.)
    Only one trigger is created per marker area, even if there are several active units in there.
    The name of the trigger created is "KRON_Trig_{side}_{marker}", where {side} indicates the side of 
    the controlled units ("WEST", "EAST", "GUER" or "CIV"), and {marker} is the name of the marker used.


  GLOBAL VARIABLES

  Group control:  If a unit has a name, and the "NAMED" argument has been used, a variable with the name
                  KRON_UPS_[unitname] will be created for it. This variable can then be set during 
                  runtime to modify its patrolling behavior.
                  When the script starts KRON_UPS_[unitname] is set to 1.
                  If it is set to 0 that particular group will abort their patrolling and
                  stop at their current position.
                  Units that are *not* named all use the same glabal variable KRON_UPS_[side].
                  So - by setting KRON_UPS_CIV to 0 you could stop all patrolling civilians.

  Sector trigger: KRON_Cleared_[markername] is false if there are enemy units still within the
                  marker/trigger zone, and true if the zone is empty. This can be used to activate
                  other events (e.g. end triggers).


  There are a few constants used in the script that could be altered in order to customize behaviour.
  All these constants can be found at the very top of the script.

 ************************************************************************************************************

  VERSION LOG
  1.0.0      Initial release
  1.0.1      Fixed issue with fast moving vehicles (choppers, planes, some boats).
             Removed area markers after area is cleared.
             Error message that appeared when cloning units was removed.
  1.0.2      "Intel" calls now also return a radio message indicating the relative position of OPFORs.
  1.0.3      Some minor fixes with randomly placed units.
             Nonfunctional "NOTRIGGER" fixed.
  1.1.0      Added flow-control variable for each patrolling group.
  1.1.1      Changed handling of named units, to avoid syntax error when using unnamed ones.
             Fixed "hostile" behavior of troops towards civilians.
  1.2.0      Random positioning improved, so that units start either on roads or in buildings positions.
             Option to place random units only on rooftops or only on roads.
             Different civilian models are used when creating clones.
             Optional init string for clones.

  1.5.0      Conversion to SQF syntax.
             MP-compatiblity added.
  1.6.0      SQF optimization.
             Added unlimited and labeled tracker functionality.
             Fixed issue with units sometimes getting stuck after very long patrols.
  1.6.1      Enhanced debug information.
  1.6.2      Made "hidemarker" & "notrigger" the default settings.
             "HIDEMARKER" change for dedicated servers.
  1.6.3      "RANDOMUP" fix
             Default trigger activation changed.
  1.6.4      Another "HIDEMARKER" tweak.
  1.6.5      "NOSLOW" option now also works on cloned units.
             Immediate stop of units if group control variable is set to 0.
             If units are named, their name is used for tracking markers.
             Enhanced AI is now also applied when unit encounters enemy vehicles.
  1.7.0      Marker position and size are constantly monitored, so units will immediately react to changes.
             Script can be called with an array to pick a surviving group leader from.
             Vehicles can now be assigned to random positions as well.
  1.8.0      Marker rotation is read automatically (requires at least version 1.04 of ArmA).
             Check for presence of VBS markers for tracking use.
  1.8.1      Occasionally patrol endpoints for infantry could be in water.
  1.8.2      Infantry units will not try to cross waterways anymore.

  2.0.0      Eliminated requirements for 'server' Game Logic and script initialization.
             Added "NOMOVE", "NOFOLLOW", "DELETE" and "EMPTY" options.
             Some performance optimization.
  2.0.1      Fixed issue with cloned units defaulting to fast movements.
  2.0.2      Better handling of large buildings, when using the "RANDOMUP" option.
  2.0.3      Fixed non-responsive "INIT" strings in latest ArmA version.
  2.0.4      Changed syntax for GameLogic created (req. for ArmA2)
  2.0.5      When using large markers it could happen that new destinations were constantly created
  2.0.6      On some maps AI might not recognize enemy units.
  2.1.0      On some maps enemies weren't recognized properly.
             Improved group cohesion when following enemies.
             Markers weren't visible when spawning clone groups.
             Improved roof positioning when using "RANDOM" or "RANDOMUP".
  2.1.1      Allow usage of tracking markers.
  2.1.2      Removed INIT functionality (due to BI's removal of setVehicleInit)
  2.1.3      Compatibility update, to avoid sytax error caused by build 111745.
  2.2.0      Added support for independent (and modified) sides. Fixed "area cleared" messages.

 ************************************************************************************************************
     