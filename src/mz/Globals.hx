package mz;

import mz.objects.*;
import mz.types.RPG;

@:native("")
class Globals {
 /**
  * The Global game variables in MZ.
  */
 @:native("$gameVariables")
 public static var GameVariables: Game_Variables;

 /**
  * The global game switches in MZ.
  */
 @:native("$gameSwitches")
 public static var GameSwitches: Game_Switches;

 /**
  * RPGMakerMZ temporary game data.
  */
 @:native("$gameTemp")
 public static var GameTemp: Game_Temp;

 /**
  * Functions to update the RPGMakerMZ message window.
  */
 @:native("$gameMessage")
 public static var GameMessage: Game_Message;

 /**
  * Functions to update the self switches in game.
  */
 @:native("$gameSelfSwitches")
 public static var GameSelfSwitches: Game_SelfSwitches;

 /**
  * Game Actor utility functionality for RPGMakerMZ.
  */
 @:native("$gameActors")
 public static var GameActors: Game_Actors;

 /**
  * Game Timers in RPGMakerMZ.
  */
 @:native("$gameTimer")
 public static var GameTimer: Game_Timer;

 /**
  * Controls and functionality for the RPGMakerMZ game map.
  */
 @:native("$gameMap")
 public static var GameMap: Game_Map;

 /**
  * Controls and functionality for interacting with the game party.
  */
 @:native("$gameParty")
 public static var GameParty: Game_Party;

 /**
  * Controls and functionality for interacting with the game player
  * data while the game is running.
  */
 @:native("$gamePlayer")
 public static var GamePlayer: Game_Player;

 @:native("$testEvent")
 public static var TestEvent: Array<EventCommand>;

 // Data Classes

 /**
  * RPGMakerMZ database actor data.
  */
 @:native("$dataActors")
 public static var DataActors: Array<Actor>;

 /**
  * RPGMakerMZ database map data.
  */
 @:native("$dataMap")
 public static var DataMap: RPGMap;

 /**
  * RPGMakerMZ database item data.
  */
 @:native("$dataItems")
 public static var DataItems: Array<Item>;

 /**
  * RPGMakerMZ database state data.
  */
 @:native("$dataStates")
 public static var DataStates: Array<State>;

 /**
  * RPGMakerMZ database enemy data.
  */
 @:native("$dataEnemies")
 public static var DataEnemies: Array<Enemy>;

 /**
  * RPGMakerMZ database armor data.
  */
 @:native("$dataArmors")
 public static var DataArmor: Array<Armor>;

 /**
  * RPGMakerMZ database weapon data.
  */
 @:native("$dataWeapons")
 public static var DataWeapons: Array<Weapon>;

 /**
  * RPGMakerMZ database troop data.
  */
 @:native("$dataTroops")
 public static var DataTroops: Array<Troop>;

 /**
  * RPGMakerMZ database common event data.
  */
 @:native("$dataCommonEvents")
 public static var DataCommonEvents: Array<CommonEvent>;

 /**
  * RPGMakerMZ database system data.
  */
 @:native("$dataSystem")
 public static var DataSystem: System;

 /**
  * RPGMakerMZ database maps information.
  */
 @:native("$dataMapInfos")
 public static var DataMapInfos: Array<MapInfo>;
}
