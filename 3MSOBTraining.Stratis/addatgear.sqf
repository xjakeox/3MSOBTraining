//addatgear.sqf
//1stLt J.Long

removeBackpack player;
removeAllWeapons player;
removeAllItems player;
sleep 2;
private ["_playeritems", "_playermags"];
_playeritems = ["tf_anprc152_2","muzzle_mas_snds_M","optic_mas_Arco_blk","optic_mas_Holosight_blk","AGM_EarBuds","AGM_Bandage","AGM_Bandage","AGM_Morphine","AGM_Bandage","AGM_Morphine","AGM_Morphine","AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Bloodbag","AGM_Bloodbag","AGM_Bloodbag"];
_playermags = ["AGM_HandFlare_Base","30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","15Rnd_mas_9x21_Mag","15Rnd_mas_9x21_Mag","AGM_HandFlare_Base"];
{
	player addItem _x;
} forEach (_playeritems);
{
	player addMagazine _x;
} forEach (_playermags);
player addBackpack "B_mas_AssaultPack_des";
player addMagazine "mas_MAAWS";
player addMagazine "mas_MAAWS";
player addMagazine "mas_MAAWS";
player addWeapon "arifle_mas_m4";
player addWeapon "mas_launch_maaws_F";
player addMagazine "mas_MAAWS";
player addWeapon "hgun_mas_m9_F";
player assignItem "tf_anprc152_2";