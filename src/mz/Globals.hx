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

/**
 * RPGMakerMZ temporary game data.
 */
@:native("$gameTemp")
var GameTemp:Game_Temp;

/**
 * Functions to update the RPGMakerMZ message window.
 */
@:native("$gameMessage")
var GameMessage:Game_Message;

/**
 * Functions to update the self switches in game.
 */
@:native("$gameSelfSwitches")
var GameSelfSwitches:Game_SelfSwitches;

/**
 * Game Actor utility functionality for RPGMakerMZ.
 */
@:native("$gameActors")
var GameActors:Game_Actors;

/**
 * Game Timers in RPGMakerMZ.
 */
@:native("$gameTimer")
var GameTimer:Game_Timer;

/**
 * Controls and functionality for the RPGMakerMZ game map.
 */
@:native("$gameMap")
var GameMap:Game_Map;

/**
 * Controls and functionality for interacting with the game party.
 */
@:native("$gameParty")
var GameParty:Game_Party;

/**
 * Controls and functionality for interacting with the game player
 * data while the game is running.
 */
@:native("$gamePlayer")
var GamePlayer:Game_Player;

@:native("$testEvent")
var TestEvent:Array<EventCommand>;

// Data Classes

/**
 * RPGMakerMZ database actor data.
 */
@:native("$dataActors")
var DataActors:Array<Actor>;

/**
 * RPGMakerMZ database map data.
 */
@:native("$dataMap")
var DataMap:RPGMap;

/**
 * RPGMakerMZ database item data.
 */
@:native("$dataItems")
var DataItems:Array<Item>;

/**
 * RPGMakerMZ database state data.
 */
@:native("$dataStates")
var DataStates:Array<State>;

/**
 * RPGMakerMZ database enemy data.
 */
@:native("$dataEnemies")
var DataEnemies:Array<Enemy>;

/**
 * RPGMakerMZ database armor data.
 */
@:native("$dataArmors")
var DataArmor:Array<Armor>;

/**
 * RPGMakerMZ database weapon data.
 */
@:native("$dataWeapons")
var DataWeapons:Array<Weapon>;

/**
 * RPGMakerMZ database troop data.
 */
@:native("$dataTroops")
var DataTroops:Array<Troop>;

/**
 * RPGMakerMZ database common event data.
 */
@:native("$dataCommonEvents")
var DataCommonEvents:Array<CommonEvent>;

/**
 * RPGMakerMZ database system data.
 */
@:native("$dataSystem")
var DataSystem:System;

/**
 * RPGMakerMZ database maps information.
 */
@:native("$dataMapInfos")
var DataMapInfos:Array<MapInfo>;
