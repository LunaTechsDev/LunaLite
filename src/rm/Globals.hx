package rm;

import rm.objects.*;
import rm.types.RPG;
import rm.types.RM;

@:native("_LTGlobals_")
class Globals {
 /**
  * The Global plugins variable containing all plugins in the plugin manager.
  */
 //  @:expose("$plugins")
 @:native("$plugins")
 public static var Plugins: Array<PluginSettings>;

 /**
  * The Global game variables in rm.
  */
 //  @:expose("$gameVariables")
 @:native("$gameVariables")
 public static var GameVariables: Game_Variables;

 /**
  * The global game switches in rm.
  */
 //  @:expose("$gameSwitches")
 @:native("$gameSwitches")
 public static var GameSwitches: Game_Switches;

 /**
  * RPGMakerMZ system game data.
  */
 //  @:expose("$gameSystem")
 @:native("$gameSystem")
 public static var GameSystem: Game_System;

 /**
  * RPGMakerMZ temporary game data.
  */
 //  @:expose("$gameTemp")
 @:native("$gameTemp")
 public static var GameTemp: Game_Temp;

 /**
  * Functions to update the RPGMakerMZ message window.
  */
 //  @:expose("$gameMessage")
 @:native("$gameMessage")
 public static var GameMessage: Game_Message;

 /**
  * Functions to update the self switches in game.
  */
 //  @:expose("$gameSelfSwitches")
 @:native("$gameSelfSwitches")
 public static var GameSelfSwitches: Game_SelfSwitches;

 /**
  * Game Actor utility functionality for RPGMakerMZ.
  */
 //  @:expose("$gameActors")
 @:native("$gameActors")
 public static var GameActors: Game_Actors;

 /**
  * Game Timers in RPGMakerMZ.
  */
 //  @:expose("$gameTimer")
 @:native("$gameTimer")
 public static var GameTimer: Game_Timer;

 /**
  * Controls and functionality for the RPGMakerMZ game map.
  */
 //  @:expose("$gameMap")
 @:native("$gameMap")
 public static var GameMap: Game_Map;

 /**
  * Controls and functionality for interacting with the game party.
  */
 //  @:expose("$gameParty")
 @:native("$gameParty")
 public static var GameParty: Game_Party;

 /**
  * Controls and functionality for interacting with the game player
  * data while the game is running.
  */
 //  @:expose("$gamePlayer")
 @:native("$gamePlayer")
 public static var GamePlayer: Game_Player;

 //  @:expose("$testEvent")
 @:native("$testEvent")
 public static var TestEvent: Array<EventCommand>;

 // Data Classes

 /**
  * RPGMakerMZ database actor data.
  */
 //  @:expose("$dataActors")
 @:native("$dataActors")
 public static var DataActors: Array<Actor>;

 /**
  * RPGMakerMZ database map data.
  */
 //  @:expose("$dataMap")
 @:native("$dataMap")
 public static var DataMap: RPGMap;

 /**
  * RPGMakerMZ database item data.
  */
 //  @:expose("$dataItems")
 @:native("$dataItems")
 public static var DataItems: Array<Item>;

 /**
  * RPGMakerMZ database state data.
  */
 //  @:expose("$dataStates")
 @:native("$dataStates")
 public static var DataStates: Array<State>;

 /**
  * RPGMakerMZ database enemy data.
  */
 //  @:expose("$dataEnemies")
 @:native("$dataEnemies")
 public static var DataEnemies: Array<Enemy>;

 /**
  * RPGMakerMZ database armor data.
  */
 //  @:expose("$dataArmors")
 @:native("$dataArmors")
 public static var DataArmor: Array<Armor>;

 /**
  * RPGMakerMZ database weapon data.
  */
 //  @:expose("$dataWeapons")
 @:native("$dataWeapons")
 public static var DataWeapons: Array<Weapon>;

 /**
  * RPGMakerMZ database troop data.
  */
 //  @:expose("$dataTroops")
 @:native("$dataTroops")
 public static var DataTroops: Array<Troop>;

 /**
  * RPGMakerMZ database common event data.
  */
 //  @:expose("$dataCommonEvents")
 @:native("$dataCommonEvents")
 public static var DataCommonEvents: Array<CommonEvent>;

 /**
  * RPGMakerMZ database system data.
  */
 //  @:expose("$dataSystem")
 @:native("$dataSystem")
 public static var DataSystem: System;

 /**
  * RPGMakerMZ database maps information.
  */
 //  @:expose("$dataMapInfos")
 @:native("$dataMapInfos")
 public static var DataMapInfos: Array<MapInfo>;
}
