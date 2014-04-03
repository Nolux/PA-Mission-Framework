// AI_respawn_UPS_init.sqf
// © JULY 2009 - norrin (norrin@iinet.net.au)

if (!isServer) exitWith {};

_unit 			= _this select 0;
_lives			= _this select 1;
_delay 			= _this select 2;
_respawn_point	= _this select 3;
_marker			= _this select 4;
_unitsGroup 	= units (group _unit);
_side 			= side _unit; 

sleep 2;

_AI_unitArray  = [];
_AI_magArray   = [];
_AI_wepArray   = [];
_AI_skillArray = [];
{_AI_unitArray = _AI_unitArray + [typeOf _x];
 _AI_magArray = _AI_magArray + [(magazines _x)];
 _AI_wepArray = _AI_wepArray + [(weapons _x)];
 _AI_skillArray = _AI_skillArray + [skill _x]}forEach _unitsGroup;

[_unit, _lives, _delay, _respawn_point, _marker, _group, _side, _AI_unitArray,_AI_magArray, _AI_wepArray,_AI_skillArray] execVM "AI_respawn_UPS\AI_respawn_UPS.sqf";
[_unit,_marker] execVM "AI_respawn_UPS\UPS_init.sqf";

if (true)exitWith {};
