//teleport.sqf
//1stLt J.Long

_dest = (_this select 3) select 0;
_dir = random 359;
player SetPos [(getMarkerPos _dest select 0)-10*sin(_dir),(getMarkerPos _dest select 1)-10*cos(_dir)];