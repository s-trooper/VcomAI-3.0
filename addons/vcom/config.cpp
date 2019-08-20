#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        name = CSTRING(COMPONENT);
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_main"};
        author = "vcomai";
        VERSION_CONFIG;
    };
};


#include "CfgEventHandlers.hpp"
    