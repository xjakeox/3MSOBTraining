#include "macro.sqf"
private ["_watch", "_items"];
_watch = call ASORGS_fnc_GetWatch;
_items = (ASORGS_CurrentInventory select GSVI_Items) - [_watch];
ASORGS_CurrentInventory set [GSVI_Items, _items];
ASORGS_WeightChanged = true;