package rm.objects;

/**
 * Superclass of Game_Party & Game_Troop
 *
 * @class Game_Unit
 */
@:native("Game_Unit")
extern class Game_Unit {
 private var _inBattle: Bool;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Returns true if unit is in battle.
  *
  * @returns {boolean}
  * @memberof Game_Unit
  */
 public function inBattle(): Bool;

 /**
  * Returns the list of battlers.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public function members(): Array<Game_Battler>;

 /**
  * Returns the list of alive battlers.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public function aliveMembers(): Array<Game_Battler>;

 /**
  * Returns the list of dead battlers.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public function deadMembers(): Array<Game_Battler>;

 /**
  * Returns the list of movable members.
  *
  * @returns {Array<Game_Battler>}
  * @memberof Game_Unit
  */
 public function movableMembers(): Array<Game_Battler>;

 /**
  * Clears the unit's actions.
  *
  * @memberof Game_Unit
  */
 public function clearActions(): Void;

 /**
  * Returns the agility of the unit.
  *
  * @returns {Int}
  * @memberof Game_Unit
  */
 public function agility(): Int;

 public function tgrSum(): Int;

 /**
  * Returns a random target from the game unit.
  *
  * @returns {Game_Battler}
  * @memberof Game_Unit
  */
 public function randomTarget(): Game_Battler;

 /**
  * Returns a random dead target from the game unit.
  *
  * @returns {Game_Battler}
  * @memberof Game_Unit
  */
 public function randomDeadTarget(): Game_Battler;

 public function smoothTarget(index: Int): Game_Battler;
 public function smoothDeadTarget(index: Int): Game_Battler;

 /**
  * Clears the action results.
  *
  * @memberof Game_Unit
  */
 public function clearResults(): Void;

 /**
  * Handler for when battle is started.
  *
  * @memberof Game_Unit
  */
 public function onBattleStart(): Void;

 /**
  * Handler for when battle has ended.
  *
  * @memberof Game_Unit
  */
 public function onBattleEnd(): Void;

 /**
  * Creates the action's of the game unit.
  *
  * @memberof Game_Unit
  */
 public function makeActions(): Void;

 /**
  * Selects a member of the unit given a battler.
  *
  * @param {Game_Battler} activeMember
  * @memberof Game_Unit
  */
 public function select(activeMember: Game_Battler): Void;

 /**
  * Returns true if all members of the unit are dead.
  *
  * @returns {Bool}
  * @memberof Game_Unit
  */
 public function isAllDead(): Bool;

 public function substituteBattler(): Game_Battler;
}
