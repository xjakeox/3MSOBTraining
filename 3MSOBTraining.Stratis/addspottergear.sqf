//addspottergear.sqf
//1stLt J.Long

removeBackpack player;
removeAllWeapons player;
removeAllItems player;
sleep 2;
private ["_playeritems", "_playermags"];
_playeritems = ["AGM_MapTools","tf_anprc152_2","AGM_ItemKestrel","muzzle_mas_snds_M","AGM_EarBuds","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Bloodbag","AGM_Bloodbag","AGM_Bloodbag"];
_playermags = ["30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","30Rnd_mas_556x45_Stanag","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","UGL_FlareRed_F","UGL_FlareRed_F","UGL_FlareRed_F","UGL_FlareRed_F","1Rnd_Smoke_Grenade_shell","15Rnd_mas_9x21_Mag","1Rnd_Smoke_Grenade_shell","1Rnd_Smoke_Grenade_shell","1Rnd_Smoke_Grenade_shell"];
player addBackpack "B_mas_AssaultPack_des";
{
	player addItem _x;
} forEach (_playeritems);
{
	player addMagazine _x;
} forEach (_playermags);
player addWeapon "arifle_mas_m4_m203";
player addPrimaryWeaponItem "optic_mas_Arco_blk";
player addWeapon "hgun_mas_m9_F";
player assignItem "tf_anprc152_2";
player addWeapon "AGM_Vector";