#include "script_component.hpp"
ADDON = false;

PREP_RECOMPILE_START;
#include "XEH_PREP.hpp"
PREP_RECOMPILE_END;

#include "VcomInit.sqf"

if (VCM_USECBASETTINGS) then {
    [] call compile preprocessFileLineNumbers "initSettings.sqf";
};

ADDON = true;
