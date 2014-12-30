/**
 **************************************************************************************
 * DON'T GIVE a FUCK - Time Jump
 * DGF_TimeJumpRespawn.sqf
 *
 * Handles respawning of player
 **************************************************************************************/

//Define player and corpse,
_player = _this select 0;
_corpse = _this select 1;

//Remove old action, add new action
if ( DGF_ID != -1 ) then
{
	_corpse removeAction DGF_ID;
};

DGF_ID = _player addAction ["<t color='#9900CC'>Jump Time</t>", { DGF_Time = DGF_SKIP_TIME; PublicVariableServer "DGF_Time"; }];

//Add Respawn Event to re-attach Action
_player addEventHandler ["respawn", { [_this select 0, _this select 1] execVM "DGF_TimeJump\DGF_TimeJumpRespawn.sqf" } ];