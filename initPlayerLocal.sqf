if (hasInterface) then {
waitUntil {alive player};
};

[player, "US Main Base - Lythium Region, Afghanistan... Standby for LongLat... 34°59'13.0-NORTH 63°07'58.7-EAST", 500, 250, 75, 1, [], 0, true] spawn BIS_fnc_establishingShot;
enableSaving [false, false];

_ehFiredAt = player addEventHandler ["FiredNear", {
	[] execVM "scripts\FPP.sqf";
}];

//Init - to be sent to initServer.sqf on release.
door1Lock = true;
door2Lock = true;
door3Lock = true;

publicVariable "door1Lock";
publicVariable "door2Lock";
publicVariable "door3Lock";
//Delay next lines
sleep 10;

adminList = [
"76561198082911296", //kirumy
"76561198116213006", //kilo
"76561198097834897", //chris
"76561198014129791", //kasper
"_SP_PLAYER_"
];

publicVariable "adminList";

///////////////////////////
///////////////////////////
// NIGHT MARE LMAOOOOOO ///
///////////////////////////
///////////////////////////

_unlckDoor1 = [
 "UnlckDoor1", "Unlock Door 1", "",{building1 setVariable ["bis_disabled_Door_1",0,true]; door1Lock = false; publicVariable "door1Lock";}, {getPlayerUID player in adminList && door1Lock}
 ] call ace_interact_menu_fnc_createAction;

_lckDoor1 = [
 "LckDoor1", "Lock Door 1", "",{building1 setVariable ["bis_disabled_Door_1",1,true]; door1Lock = true; publicVariable "door1Lock";}, {getPLayerUID player in adminList && !door1Lock}
 ] call ace_interact_menu_fnc_createAction;

_unlckDoor2 = [
 "UnlckDoor2", "Unlock Door 2", "",{building1 setVariable ["bis_disabled_Door_2",0,true]; door2Lock = false; publicVariable "door2Lock";}, {getPLayerUID player in adminList && door2Lock}
 ] call ace_interact_menu_fnc_createAction;

_lckDoor2 = [
 "LckDoor2", "Lock Door 2", "",{building1 setVariable ["bis_disabled_Door_2",1,true]; door2Lock = true; publicVariable "door2Lock";}, {getPlayerUID player in adminList && !door2Lock}
 ] call ace_interact_menu_fnc_createAction;

_unlckDoor3 = [
 "UnlckDoor3", "Unlock Door 3", "",{building1 setVariable ["bis_disabled_Door_3",0,true]; door3Lock = false; publicVariable "door3Lock";}, {getPLayerUID player in adminList && door3Lock}
 ] call ace_interact_menu_fnc_createAction;

_lckDoor3 = [
 "LckDoor3", "Lock Door 3", "",{building1 setVariable ["bis_disabled_Door_3",1,true]; door3Lock = true; publicVariable "door3Lock";}, {getPLayerUID player in adminList && !door3Lock}
 ] call ace_interact_menu_fnc_createAction;
 
 
/////// Part 2 ///////
 [
 L_1, 0, ["ACE_MainActions"], _lckDoor1
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_2, 0, ["ACE_MainActions"], _lckDoor2
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_3, 0, ["ACE_MainActions"], _lckDoor3
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_1, 0, ["ACE_MainActions"], _unlckDoor1
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_2, 0, ["ACE_MainActions"], _unlckDoor2
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_3, 0, ["ACE_MainActions"], _unlckDoor3
 ] call ace_interact_menu_fnc_addActionToObject;
 
 // part 3 //
  [
 L_1_1, 0, ["ACE_MainActions"], _lckDoor1
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_2_1, 0, ["ACE_MainActions"], _lckDoor2
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_3_1, 0, ["ACE_MainActions"], _lckDoor3
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_1_1, 0, ["ACE_MainActions"], _unlckDoor1
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_2_1, 0, ["ACE_MainActions"], _unlckDoor2
 ] call ace_interact_menu_fnc_addActionToObject;
 
  [
 L_3_1, 0, ["ACE_MainActions"], _unlckDoor3
 ] call ace_interact_menu_fnc_addActionToObject;