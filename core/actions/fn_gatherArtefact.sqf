/*
File: fn_gatherCerises.sqf
Author:GeK
 
Description:
Gathers artefacts
*/
private["_sum","_rand"];
_rand=floor(random 3)+1;
_sum = ["artefact",_rand,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
 
if(_sum > 0) then
{
life_action_in_use = true;
titleText["Recherche d'artefact...","PLAIN"];
player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
sleep 2;
if(([true,"artefact",_sum] call life_fnc_handleInv)) then
{
playSound "bag";
titleText[format["Vous trouvez %1 artefact(s)",_sum],"PLAIN"];
};
}
else
{
hint "Votre sac est plein";
};
 
life_action_in_use = false;
 
Step 2:
 
Give the cherry a weight in your fn_itemWeight file. Should look like this.
 
case "artefact": {1};
