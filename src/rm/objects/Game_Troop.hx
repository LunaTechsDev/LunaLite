package rm.objects;

import haxe.DynamicAccess;
import js.lib.Object;
import rm.types.RPG;

/**
 * -----------------------------------------------------------------------------
 * Game_Troop
 *
 * The game object declare class for a troop and the battle-related data.
 * @class Game_Troop
 */
@:native("Game_Troop")
extern class Game_Troop extends Game_Unit {
 public static var LETTER_TABLE_HALF: Array<String>;
 public static var LETTER_TABLE_FULL: Array<String>;
 private var _interpreter: Game_Interpreter;
 private var _troopId: Int;

 public function new(): Void;

 /**
  * _eventFlags:{
   [Number]:Bool
  }
  */
 private var _eventFlags: DynamicAccess<Bool>;

 private var _enemies: Array<Game_Enemy>;
 private var _turnCount: Int;

 /**
  * {
   [name:string]:number
  }
  */
 private var _namesCount: DynamicAccess<Int>; // TODO: Use DynamicAccess

 /**
  * Returns all enemies in the battle.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public function members(): Array<Game_Enemy>;

 /**
  * Returns all alive enemies.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public function aliveMembers(): Array<Game_Enemy>;

 /**
  * Returns all dead enemies.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public function deadMembers(): Array<Game_Enemy>;

 /**
  * Returns movable enemies.
  *
  * @returns {Array<Game_Enemy>}
  * @memberof Game_Troop
  */
 public function movableMembers(): Array<Game_Enemy>;

 /**
  * Returns true if event is running.
  *
  * @returns {boolean}
  * @memberof Game_Troop
  */
 public function isEventRunning(): Bool;

 /**
  * Updates the game interpreter.
  *
  * @memberof Game_Troop
  */
 public function updateInterpreter(): Void;

 /**
  * Returns the turn count.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public function turnCount(): Int;

 public function clear(): Void;

 /**
  * Returns troop information from the database.
  *
  * @returns {RPG.Troop}
  * @memberof Game_Troop
  */
 public function troop(): Troop;

 public function setup(troopId: Int): Void;

 /**
  * Creates unique names for each enemy.
  *
  * @memberof Game_Troop
  */
 public function makeUniqueNames(): Void;

 /**
  * Returns the letter table for enemy troops.
  *
  * @returns {Array<string>}
  * @memberof Game_Troop
  */
 public function letterTable(): Array<String>;

 /**
  * Returns the name of enemies within the troop.
  *
  * @returns {Array<string>}
  * @memberof Game_Troop
  */
 public function enemyNames(): Array<String>;

 public function meetsConditions(page: EventPage): Bool;
 public function setupBattleEvent(): Void;

 /**
  * Increases the turn number.
  *
  * @memberof Game_Troop
  */
 public function increaseTurn(): Void;

 /**
  * Returns the total exp of all members of the enemy troop.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public function expTotal(): Int;

 /**
  * Return the total gold of all enemies.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public function goldTotal(): Int;

 /**
  * Returns the gold rate based on game party gold rate.
  *
  * @returns {number}
  * @memberof Game_Troop
  */
 public function goldRate(): Int;

 /**
  * Creates the drop items for all members of the enemy troop, and
  * returns the item information.
  * @returns {Array<RPG.BaseItem>}
  * @memberof Game_Troop
  */
 public function makeDropItems(): Array<BaseItem>;
}
