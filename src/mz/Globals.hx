package mz;

import mz.objects.*;
import mz.types.RPG;

/**
 * The Global game variables in MZ.
 */
@:native("$gameVariables")
var GameVariables:Game_Variables;

/**
 * The global game switches in MZ.
 */
@:native("$gameSwitches")
var GameSwitches:Game_Switches;

@:native("$gameTemp")
var GameTemp:Game_Temp;

@:native("$gameMessage")
var GameMessage:Game_Message;

@:native("$gameSelfSwitches")
var GameSelfSwitches:Game_SelfSwitches;

@:native("$gameActors")
var GameActors:Game_Actors;

@:native("$gameTimer")
var GameTimer:Game_Timer;

@:native("$gameMap")
var GameMap:Game_Map;

@:native("$gameParty")
var GameParty:Game_Party;

@:native("$gamePlayer")
var GamePlayer:Game_Player;

@:native("$testEvent")
var TestEvent:Array<EventCommand>;


//Data Classes
@:native("$dataActors")
// var DataActors:Array<Actor

@:native("$dataMap")
var DataMap:RPGMap;

@:native("$dataItems")
var DataItems:Array<Item>;

@:native("$dataStates")
var DataStates:Array<State>;

@:native("$dataEnemies")
var DataEnemies:Array<Enemy>;

@:native("$dataArmors")
var DataArmor:Array<Armor>;

@:native("$dataWeapons")
var DataWeapons:Array<Weapon>;

@:native("$dataTroops")
var DataTroops:Array<Troop>;

@:native("$dataCommonEvents")
var DataCommonEvents:Array<CommonEvent>;

@:native("$dataSystem")
var DataSystem:System;

@:native("$dataMapInfos")
var DataMapInfos:Array<MapInfo>;

