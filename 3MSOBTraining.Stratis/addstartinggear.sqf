//addstartinggear.sqf
//By GySgt J.Long
this = player;
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;
sleep 2;
this forceAddUniform "rhs_uniform_FROG01_wd";
this addVest "rhsusf_spc_light";
this addBackpack "rhsusf_assault_eagleaiii_coy";
this addHeadgear "rhsusf_lwh_helmet_marpatwd";
this linkItem "tf_anprc152_1";
