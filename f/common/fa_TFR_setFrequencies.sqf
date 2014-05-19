// F3 - ACRE Set Frequencies
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// This runs for each player, so we can check player group and set custom freqs.
// ====================================================================================

if (!isDedicated) then {

  if (isNull player) then {			// JIP check.
  	waitUntil {!isNull player};
  };

// ====================================================================================

  	// FETCH DEFAULT RADIO FREQUENCIES

	_LongRangeChannels = ["51","52","53","54","55","56","57","58"];
	_shortRangeChannels = ["100","101","102","103","104","105","106","107"];

	// SHORT-RANGE RADIO FREQUENCIES/CHANNELS

_groupname = groupID (group player);
// hint format ["_groupname = [%1]", _groupname];

switch (_groupname) do {

	// Command
case "PLT CO -":	{_shortRangeChannels = ["100","101","102","103","104","105","106","107"];};
case "PLT XO -":	{_shortRangeChannels = ["100","101","102","103","104","105","106","107"];};

	// Infantry
case "ASL -":	{_shortRangeChannels = ["100","110","111","112","113","114","115","116"];};
case "A1 -":	{_shortRangeChannels = ["100","110","111","112","113","114","115","116"];};
case "A2 -":	{_shortRangeChannels = ["100","110","111","112","113","114","115","116"];};
case "A3 -":	{_shortRangeChannels = ["100","110","111","112","113","114","115","116"];};
case "BSL -":	{_shortRangeChannels = ["100","120","121","122","123","124","125","126"];};
case "B1 -":	{_shortRangeChannels = ["100","120","121","122","123","124","125","126"];};
case "B2 -":	{_shortRangeChannels = ["100","120","121","122","123","124","125","126"];};
case "B3 -":	{_shortRangeChannels = ["100","120","121","122","123","124","125","126"];};
case "CSL -":	{_shortRangeChannels = ["100","130","131","132","133","134","135","136"];};
case "C1 -":	{_shortRangeChannels = ["100","130","131","132","133","134","135","136"];};
case "C2 -":	{_shortRangeChannels = ["100","130","131","132","133","134","135","136"];};
case "C3 -":	{_shortRangeChannels = ["100","130","131","132","133","134","135","136"];};
case "DSL -":	{_shortRangeChannels = ["100","140","141","142","143","144","145","146"];};
case "D1 -":	{_shortRangeChannels = ["100","140","141","142","143","144","145","146"];};
case "D2 -":	{_shortRangeChannels = ["100","140","141","142","143","144","145","146"];};
case "D3 -":	{_shortRangeChannels = ["100","140","141","142","143","144","145","146"];};
case "MMG1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MMG2 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MMG3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MMG3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MMG4 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MAT1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MAT2 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "ST1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "ST2 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "ST3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "ST3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "ST4 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "HMG1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "HMG2 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "HMG3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "HMG4 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MTR1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MTR2 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MTR3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "MTR4 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "SAM1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "SAM2 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "SAM3 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "SAM4 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "DT1 -":	{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "AUX":		{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};
case "LOG":		{_shortRangeChannels = ["100","101","110","120","130","140","150","160"];};

	// Ground Vehicles
case "IFV1 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV2 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV3 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV4 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV5 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV6 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV7 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "IFV8 -":	{_shortRangeChannels = ["100","170","171","172","173","174","175","176"];};
case "TANGO 1 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "TANGO 2 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "TANGO 3 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "WHISKY 1 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "WHISKY 2 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "WHISKY 3 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "ZULU 1 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "ZULU 2 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};
case "ZULU 3 -":	{_shortRangeChannels = ["100","180","181","182","183","184","185","186"];};

	// Air
case "TH1 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH2 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH3 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH4 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH5 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH6 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH7 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "TH8 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "BANDAID 1 -":	{_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "BANDAID 2 -": {_shortRangeChannels = ["100","190","191","192","193","194","195","196"];};
case "REAPER 1 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "REAPER 2 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "REAPER 3 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "KNIGHT 1 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "KNIGHT 2 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "KNIGHT 3 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "SCOUT 1 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "SCOUT 2 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "SCOUT 3 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "SWORD 1 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "SWORD 2 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "SWORD 3 -":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "PAVEMENT":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "BARON":		{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "RAPTOR":		{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};
case "PHOENIX":		[_shortRangeChannels = ["100","200","201","202","203","204","205","206"];];
case "THUNDERBIRD":	{_shortRangeChannels = ["100","200","201","202","203","204","205","206"];};

	//	Default
default {_shortRangeChannels = ["100","101","102","103","104","105","106","107"];};

	// SET RADIO CHANNELS
	// Loops through all channels on SR and LR - I wanna make a real loop here, eventually

	// LR radio - channel 1-8

_ch = _longRangeChannels select 0;
[(call TFAR_fnc_activeLrRadio), 1, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 1;
[(call TFAR_fnc_activeLrRadio), 2, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 2;
[(call TFAR_fnc_activeLrRadio), 3, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 3;
[(call TFAR_fnc_activeLrRadio), 4, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 4;
[(call TFAR_fnc_activeLrRadio), 5, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 5;
[(call TFAR_fnc_activeLrRadio), 6, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 6;
[(call TFAR_fnc_activeLrRadio), 7, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _longRangeChannels select 7;
[(call TFAR_fnc_activeLrRadio), 8, _ch] call TFAR_fnc_SetChannelFrequency;

//hint "Long Range Channels set.";

	// SW radio - channel 1-8

_ch = _ShortRangeChannels select 0;
[(call TFAR_fnc_activeSwRadio), 1, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 1;
[(call TFAR_fnc_activeSwRadio), 2, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 2;
[(call TFAR_fnc_activeSwRadio), 3, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 3;
[(call TFAR_fnc_activeSwRadio), 4, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 4;
[(call TFAR_fnc_activeSwRadio), 5, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 5;
[(call TFAR_fnc_activeSwRadio), 6, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 6;
[(call TFAR_fnc_activeSwRadio), 7, _ch] call TFAR_fnc_SetChannelFrequency;
_ch = _ShortRangeChannels select 7;
[(call TFAR_fnc_activeSwRadio), 8, _ch] call TFAR_fnc_SetChannelFrequency;

//hint "Long Range Channels set.";

	// Continue onto radio assignation.

// ====================================================================================

};
