#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_main"};
        author = "genesis92x";
        VERSION_CONFIG;
    };
};
