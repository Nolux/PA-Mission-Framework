// F3 - TFAR Clear Radios
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS

_unit = _this select 1;

// ====================================================================================

// CHECK FOR RADIO INITIALISATION
// Wait until ACRE has assigned all radio items their own unique IDs, and populated the currentRadioList.

waitUntil{!isNil "TFAR_fnc_radiosList"};
waitUntil{(count TFAR_fnc_radiosList) > 0};

// ====================================================================================

// REMOVE ALL EXISTING RADIOS
// Check for any radios that haven't been converted into unique items yet, due to errors or server-lag.

{ _isRadio = [_x] call TFAR_fnc_isRadio;
if(_isRadio) then {_unit removeItem _x};
} foreach items _unit;

// Remove all initialised radios.

{_unit unassignItem _x; _unit removeItem _x;} foreach TFAR_fnc_radiosList;

waitUntil {count TFAR_fnc_radiosList < 1};				// Wait until radio list updated.

