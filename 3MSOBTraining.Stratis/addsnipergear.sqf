//addsnipergear.sqf
//1stLt J.Long

removeBackpack player;
removeAllWeapons player;
removeAllItems player;
sleep 2;
private ["_playeritems", "_playermags"];
_playeritems = ["tf_anprc152_2","AGM_MapTools","AGM_ItemKestrel","AGM_EarBuds","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Bloodbag","AGM_Bloodbag","AGM_Bloodbag"];
_playermags = ["5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","5Rnd_mas_762x51_T_Stanag","15Rnd_mas_9x21_Mag","15Rnd_mas_9x21_Mag"];
player addBackpack "MEF_Des_Assault";
{
	player addItem _x;
} forEach (_playeritems);
{
	player addMagazine _x;
} forEach (_playermags);
player addWeapon "srifle_mas_m24_d";
player addPrimaryWeaponItem "optic_mas_zeiss";
player addWeapon "hgun_mas_m9_F";
player assignItem "tf_anprc152_2";
player addWeapon "AGM_Vector";