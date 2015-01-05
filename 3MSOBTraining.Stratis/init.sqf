//Remove Saving and team switching
enableSaving [false, false];
enableTeamswitch false;

//Mapping for command staff that need time jump
_timeJumpPlayer = [ "battCO", "battXO", "compCO", "compXO" ];

waitUntil { !isNull player || isServer }; // waitUntil the player variable exists 
//Server Logic
if ( isServer ) then
{
	//Grab Handler for time jump
	call compile preprocessFileLineNumbers "DGF_TimeJump\DGF_TimeJumpServerInit.sqf";
	
	//Make some things invulnerable 
	airBoard 		allowDamage false;
	atAmmobox 		allowDamage false;
	firingBoard		allowDamage false;
	firingrangbox1	allowDamage false;
	firingrangebox2 allowDamage false;
	moutAmmobox 	allowDamage false;
	moutBoard 		allowDamage false;
	startingGearbox allowDamage false;
	
	//Remove items from some ammo boxes
	clearweaponcargo moutAmmobox; clearMagazineCargo moutAmmobox; clearItemCargo moutAmmobox;
};

//Client Logic
if ( local player ) then
{
	//Remove Items from player
	removeBackpack player;
	removeAllWeapons player;
	removeAllItems player;
	
	//Loop through approved rosters and attach time jump to those players
	{
		if ( format ["%1", player] == _x ) then { player call compile preprocessFileLineNumbers "DGF_TimeJump\DGF_TimeJumpClientInit.sqf"; };
	} forEach ( _timeJumpPlayer );
};