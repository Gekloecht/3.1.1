/*
	File: fn_seizePlayerWeapon.sqf
	Author: Skalicon
	
	Description:
	Preforms the seizePlayerWeaponAction script on the cursorTarget
*/
[[],"life_fnc_seizePlayerWeaponAction",cursorTarget,false] spawn life_fnc_MP;
//titleText format["Saisie des armes de %1", name cursorTarget];
[[52, player, format["Armes de %1 confisquees", name cursorTarget]],"STS_fnc_logIt",false,false] spawn life_fnc_MP;