/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Time Jump
 * DGF_TimeJumpServerInit.sqf
 *
 * Initialization of Time Jump feature to a player
 * eg. *this execVM "DGF_TimeJump\DGF_TimeJumpInit.sqf"*
 **************************************************************************************/

//Server initialization
DGF_Time = 0;
publicVariable "DGF_Time";

"DGF_Time" addPublicVariableEventHandler
{
	skipTime DGF_Time;
	DGF_Time = 0;
	publicVariable "DGF_Time";
};