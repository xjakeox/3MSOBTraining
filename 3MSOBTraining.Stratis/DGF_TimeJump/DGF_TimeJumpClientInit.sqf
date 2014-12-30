/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Time Jump
 * DGF_TimeJumpClientInit.sqf
 *
 * Initialization of Time Jump feature to a player
 * eg. *this execVM "DGF_TimeJump\DGF_TimeJumpInit.sqf"*
 **************************************************************************************/

//Global Constant
//Modify to affect the amount of time jump
DGF_SKIP_TIME = 4; //4 Hours
	
//Global Variable
DGF_ID = -1; //Tracks Action Ids for clean up
	
//Private Variable
private [ "_player" ];
	
//Define player, addAction
_player = _this;
DGF_ID = _player addAction ["<t color='#9900CC'>Jump Time</t>", { DGF_Time = DGF_SKIP_TIME; PublicVariableServer "DGF_Time"; }];
	
//Add Respawn Event to re-attach Action
_player addEventHandler ["respawn", { [_this select 0, _this select 1] execVM "DGF_TimeJump\DGF_TimeJumpRespawn.sqf" } ];