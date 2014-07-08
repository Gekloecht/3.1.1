/*
	File: fn_deathScreen.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Handles stuff being displayed on the death screen while
	it is currently active.
*/
private["_medicsOnline","_medicsNear"];
disableSerialization;

_medicsOnline = ((findDisplay 7300) displayCtrl 7304);
_medicsNear = ((findDisplay 7300) displayCtrl 7305);

waitUntil {
	_nearby = if(([independent,getPosATL player,120] call life_fnc_nearUnits)) then {"OUI"} else {"NON"};
	_medicsOnline ctrlSetText format["Medics En Ligne: %1",[independent] call life_fnc_playerCount];
	_medicsNear ctrlSetText format["Medics Proches: %1",_nearby];
	sleep 1;
	(isNull (findDisplay 7300))
};