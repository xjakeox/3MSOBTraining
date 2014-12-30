//addactions.sqf
//1stLt J.Long

//Firing Board Whiteboard
firingBoard addAction ["<t color='#CC9900'>Teleport - Air Base</t>","teleport.sqf",["airBaseTeleport"]];
firingBoard addAction ["<t color='#CC9900'>Teleport - MOUT Course</t>","teleport.sqf",["moutTeleport"]];
//Mout Coarse Whiteboard
moutBoard addAction ["<t color='#CC9900'>Teleport - Air Base</t>","teleport.sqf",["airBaseTeleport"]];
moutBoard addAction ["<t color='#CC9900'>Teleport - Firing Range</t>","teleport.sqf",["firingRangeTeleport"]];
//Air Base Whiteboard
airBoard addAction ["<t color='#CC9900'>Teleport - Mout Course</t>","teleport.sqf",["moutTeleport"]];
airBoard addAction ["<t color='#CC9900'>Teleport - Firing Range</t>","teleport.sqf",["firingRangeTeleport"]];
//Mout Ammobox
moutAmmobox addAction ["<t color='#0099CC'>MOUT Gear</t>","addMoutGear.sqf"];
//Firing Range Ammobox
startingGearbox addAction ["<t color='#0099CC'>Training Gear</t>","addtraininggear.sqf"];
//AT Ammobox
atAmmobox addAction ["<t color='#0099CC'>AT Gear</t>","addatgear.sqf"];
atAmmobox addAction ["<t color='#0099CC'>Sniping Gear</t>","addsnipergear.sqf"];
atAmmobox addAction ["<t color='#0099CC'>Spotter Gear</t>","addspottergear.sqf"];