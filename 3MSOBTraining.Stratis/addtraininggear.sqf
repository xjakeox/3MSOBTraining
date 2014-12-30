//addtraining gear
//1stLt J.Long

removeBackpack player;
removeAllWeapons player;
removeAllItems player;
sleep 2;
private ["_playeritems", "_playermags"];
_playeritems = ["tf_anprc152_2","acc_flashlight","muzzle_mas_snds_M","optic_mas_Arco_blk","optic_mas_Holosight_blk","AGM_EarBuds","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Bandage","AGM_Morphine","AGM_Morphine","AGM_Morphine","AGM_Epipen","AGM_Epipen","AGM_Epipen","AGM_Bloodbag","AGM_Bloodbag","AGM_Bloodbag"];
_playermags = ["30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","30Rnd_mas_556x45_T_Stanag","15Rnd_mas_9x21_Mag","15Rnd_mas_9x21_Mag","15Rnd_mas_9x21_Mag","AGM_M84","AGM_M84","AGM_HandFlare_Base","AGM_HandFlare_Base"];

player addBackpack "MEF_Des_Assault";
{
	player addItem _x;
} forEach (_playeritems);
{
	player addMagazine _x;
} forEach (_playermags);
player addWeapon "arifle_mas_m4";
player addWeapon "hgun_mas_m9_F";
player assignItem "tf_anprc152_2";