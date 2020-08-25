package rm.objects;

import rm.types.RPG.BaseItem;
import rm.types.RPG.EnemyAction;
import rm.types.RPG.Enemy;

/**
 * -----------------------------------------------------------------------------
 * Game_Enemy
 *
 * The game object declare class for an enemy.
 * @class Game_Enemy
 */
@:expose("Game_Enemy")
@:native("Game_Enemy")
extern class Game_Enemy extends Game_Battler {
 @:native("_enemyId")
 public var __enemyId: Int;
 private var _enemyId: Int;
 @:native("_letter")
 public var __letter: String;
 private var _letter: String;
 @:native("_plural")
 public var __plural: Bool;
 private var _plural: Bool;
 @:native("_screenX")
 public var __screenX: Int;
 private var _screenX: Int;
 @:native("_screenY")
 public var __screenY: Int;
 private var _screenY: Int;

 public function new(enemyId: Int, x: Int, y: Int);
 public function initialize(enemyId: Int, x: Int, y: Int): Void;

 public function initMembers(): Void;
 public function setup(enemyId: Int, x: Int, y: Int): Void;

 /**
  * Returns the other troops in the enemy team.
  *
  * @returns {Game_Troop}
  * @memberof Game_Enemy
  */
 public function friendsUnit(): Game_Troop;

 /**
  * Returns the game party.
  *
  * @returns {Game_Party}
  * @memberof Game_Enemy
  */
 public function opponentsUnit(): Game_Party;

 public function isBattleMember(): Bool;

 /**
  * Returns the enemy id.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function enemyId(): Int;

 /**
  * Returns the enemy information from the database.
  *
  * @returns {RPG.Enemy}
  * @memberof Game_Enemy
  */
 public function enemy(): Enemy;

 /**
  * Returns the enemy's exp amount.
  *
  * @memberof Game_Enemy
  */
 public function exp(): Void;

 /**
  * Returns enemy's given gold.
  *
  * @memberof Game_Enemy
  */
 public function gold(): Void;

 /**
  * Creates the drop items for the enemy specified by the database.
  *
  * @returns {Array<RPG.BaseItem>}
  * @memberof Game_Enemy
  */
 public function makeDropItems(): Array<BaseItem>;

 /**
  * Returns the item drop rate of the enemy.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function dropItemRate(): Float;

 // TODO: turn kind into an enum
 public function itemObject(kind: Int, dataId: Int): Void;

 /**
  * Returns true if the enemy sprite is visible.
  *
  * @returns {boolean}
  * @memberof Game_Enemy
  */
 public function isSpriteVisible(): Bool;

 /**
  * Returns enemy screen X coordinate.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function screenX(): Int;

 /**
  * Returns enemy screen Y position.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function screenY(): Int;

 /**
  * Returns the hue of the enemy.
  *
  * @returns {number}
  * @memberof Game_Enemy
  */
 public function battlerHue(): Float;

 /**
  * Returns the enemy original name.
  *
  * @returns {string}
  * @memberof Game_Enemy
  */
 public function originalName(): String;

 public function isLetterEmpty(): Bool;
 public function setLetter(letter: String): Void;
 public function setPlural(plural: Bool): Void;

 /**
  * Transform the enemy into another enemy based on id.
  *
  * @param {number} enemyId
  * @memberof Game_Enemy
  */
 public function transform(enemyId: Int): Void;

 public function meetsCondition(action: EnemyAction): Bool;

 public function meetsTurnCondition(param1: Int, param2: Int): Bool;

 public function meetsHpCondition(param1: Int, param2: Int): Bool;

 public function meetsMpCondition(param1: Int, param2: Int): Bool;

 public function meetsStateCondition(param: Int): Bool;

 public function meetsPartyLevelCondition(param: Int): Bool;

 public function meetsSwitchCondition(param: Int): Bool;

 /**
  * Returns true if the enemy action is valid.
  *
  * @param {RPG.Enemy.Action} action
  * @returns {boolean}
  * @memberof Game_Enemy
  */
 public function isActionValid(action: EnemyAction): Bool;

 public function selectAction(actionList: Array<EnemyAction>,
  ratingZero: Float): EnemyAction;
 public function selectAllActions(actionList: Array<EnemyAction>): Void;
}
