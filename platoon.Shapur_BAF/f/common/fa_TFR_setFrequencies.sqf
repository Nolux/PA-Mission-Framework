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
hint "LR channel array created.";

	// SHORT-RANGE RADIO FREQUENCIES/CHANNELS

_groupname = groupID (group player);
// hint format ["_groupname = [%1]", _groupname];

//all sides?
// pltco, 1 2
	if ( (_groupname == "PLT CO -") || (_groupname == "PLT XO -") ) then
		{_shortRangeChannels = ["100","101","102","103","104","105","106","107"] };
 hint format ["SR Channel Array first value is [%1]", (_shortRangeChannels select 0)]
// alpha, sl 1 2, 2 (3 4 5 6 7 8)
	if ( (_groupname == "ASL -") || (_groupname == "A1 -") || (_groupname == "A2 -") || (_groupname == "A3 -") ) then
		{_shortRangeChannels = ["100","110","111","112","113","114","115","116"] };
// bravo, sl 1 2, 2 (3 4 5 6 7 8)
	if ( (_groupname == "BSL -") || (_groupname == "B1 -") || (_groupname == "B2 -") || (_groupname == "B3 -") ) then
		{_shortRangeChannels = ["100","120","121","122","123","124","125","126"] };
// charlie, sl 1 2, 2 (3 4 5 6 7 8)
	if ( (_groupname == "CSL -") || (_groupname == "C1 -") || (_groupname == "C2 -" || "C3 -") ) then
		{_shortRangeChannels = ["100","130","131","132","133","134","135","136"] };
// delta, sl 1 2, 2 (3 4 5 6 7 8)
	if ( (_groupname == "DSL -") || (_groupname == "D1 -") || (_groupname == "D2 -") || (_groupname == "D3 -") ) then
		{_shortRangeChannels = ["100","140","141","142","143","144","145","146"] };
// weapons, 1 (2 3 4 5 6 7 8 9)
// all should have SR
	if ( (_groupname == "MMG1 -") || (_groupname == "MMG2 -") || (_groupname == "MMG3 -") || (_groupname == "MMG4 -") || (_groupname == "MAT1 -") || (_groupname == "MAT2 -") || (_groupname == "ST1 -") || (_groupname == "ST2 -") || (_groupname == "ST3 -") || (_groupname == "ST4 -") || (_groupname == "HMG1 -") || (_groupname == "HMG2 -") || (_groupname == "HMG3 -") || (_groupname == "HMG4 -") || (_groupname == "MTR1 -") || (_groupname == "MTR2 -") || (_groupname == "MTR3 -") || (_groupname == "MTR4 -") || (_groupname == "SAM1 -") || (_groupname == "SAM2 -") || (_groupname == "SAM3 -") || (_groupname == "SAM4 -") || (_groupname == "DT1 -") ) then
		{_shortRangeChannels = ["100","101","110","120","130","140","150","160"] };
// logi, 1 2
// all should have SR
	if ( (_groupname == "AUX") || (_groupname == "LOG") ) then
		{_shortRangeChannels = ["100","101","110","120","130","140","150","160"] };
// armored
	if ( (_groupname == "IFV1") || (_groupname == "IFV2 -") || (_groupname == "IFV3 -") || (_groupname == "IFV4 -") || (_groupname == "IFV5 -") || (_groupname == "IFV6 -") || (_groupname == "IFV7 -") || (_groupname == "IFV8 -") ) then
		{_shortRangeChannels = ["100","170","171","172","173","174","175","176"] };
// armor
	if ( (_groupname == "TANGO 1 -") || (_groupname == "TANGO 2 -") || (_groupname == "TANGO 3 -") || (_groupname == "WHISKY 1 -") || (_groupname == "WHISKY 2 -") || (_groupname == "WHISKY 3 -") || (_groupname == "ZULU 1 -") || (_groupname == "ZULU 2 -") || (_groupname == "ZULU 3 -") ) then
		{_shortRangeChannels = ["100","180","181","182","183","184","185","186"] };
// transport and medevac helis
// all should have SR
	if ( (_groupname == "TH1 -") || (_groupname == "TH2 -") || (_groupname == "TH3 -") || (_groupname == "TH4 -") || (_groupname == "TH5 -") || (_groupname == "TH6 -") || (_groupname == "TH7 -") || (_groupname == "TH8 -") || (_groupname == "BANDAID 1 -") || (_groupname == "BANDAID 2 -") ) then
		{_shortRangeChannels = ["100","190","191","192","193","194","195","196"] };
// cas
// all should have SR
	if ( (_groupname == "REAPER 1 -") || (_groupname == "REAPER 2 -") || (_groupname == "REAPER 3 -") || (_groupname == "KNIGHT 1 -") || (_groupname == "KNIGHT 2 -") || (_groupname == "KNIGHT 3 -") || (_groupname == "SCOUT 1 -") || (_groupname == "SCOUT 2 -") || (_groupname == "SCOUT 3 -") || (_groupname == "SWORD 1 -") || (_groupname == "SWORD 2 -") || (_groupname == "SWORD 3 -") || (_groupname == "PAVEMENT -") || (_groupname == "BARON -") || (_groupname == "RAPTOR -") || (_groupname == "PHOENIX -") || (_groupname == "THUNDERBIRD -") ) then
		{_shortRangeChannels = ["100","200","201","202","203","204","205","206"] };

hint "West SR channel array created.";

	// SET RADIO CHANNELS
	// Loops through all channels on SR and LR - I wanna make a real loop here, nzjsd;gsgjnbk

	// LR radio - channel 1-8

[(call TFAR_fnc_activeLrRadio), 1, (_longRangeChannels select 0)] call TFAR_fnc_SetChannelFrequency;
// hint format ["LR CHN 1 is %1", _longRangeChannels select 0];
[(call TFAR_fnc_activeLrRadio), 2, (_longRangeChannels select 1)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 3, (_longRangeChannels select 2)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 4, (_longRangeChannels select 3)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 5, (_longRangeChannels select 4)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 6, (_longRangeChannels select 5)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 7, (_longRangeChannels select 6)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeLrRadio), 8, (_longRangeChannels select 7)] call TFAR_fnc_SetChannelFrequency;

//hint "Long Range Channels set.";

	// SW radio - channel 1-8

[(call TFAR_fnc_activeSwRadio), 1, (_shortRangeChannels select 0)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 2, (_shortRangeChannels select 1)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 3, (_shortRangeChannels select 2)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 4, (_shortRangeChannels select 3)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 5, (_shortRangeChannels select 4)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 6, (_shortRangeChannels select 5)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 7, (_shortRangeChannels select 6)] call TFAR_fnc_SetChannelFrequency;
[(call TFAR_fnc_activeSwRadio), 8, (_shortRangeChannels select 7)] call TFAR_fnc_SetChannelFrequency;

//hint "Long Range Channels set.";

	// Continue onto radio assignation.

// ====================================================================================

};
