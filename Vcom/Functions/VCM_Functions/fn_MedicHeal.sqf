
/*
	Author: Freddo

	Description:
		Makes medic move to a soldier and heal him.

	Parameter(s):
		0: OBJECT - Medic
		1: OBJECT - Injured unit

	Returns:
		NOTHING
*/

scopeName "main";

params ["_medic","_unit"];
if (not ("Medikit" in items _medic) || not (isNull objectParent _unit) || _medic distance2D _unit > 50) exitWith {};

if (VCM_DEBUG) then {systemChat format ["%1 attempting to heal %2", _medic, _unit];};

_medic setVariable ["VCM_UNIT_HEALING", 1, false];

while {not (isNull _unit) && alive _unit && damage _unit != 0 && isNull objectParent _unit && not (isNull _medic) && alive _medic && _medic distance2D _unit > 2} do 
{
	_medic doMove getPos _unit;
	sleep 5;
};

doStop _unit;

_medic action ["HealSoldier", _unit];

sleep 5;

//Rerun script if medic didn't manage to heal
if (damage _unit != 0) then {breakTo "main"};

_unit doFollow leader _unit;
_medic doFollow leader _medic;

_medic setVariable ["VCM_UNIT_HEALING", 0, false];