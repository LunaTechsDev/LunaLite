package rm.sprites;

/**
 * -----------------------------------------------------------------------------
 * Spriteset_Battle
 *
 * The set of sprites on the battle screen.
 */
import rm.core.Bitmap;
import rm.core.Sprite;
import rm.core.TilingSprite;

@:native("Spriteset_Battle")
extern class Spriteset_Battle extends Spriteset_Base {
 private var _battlebackLocated: Bool;
 private var _backgroundSprite: Sprite;
 private var _battleField: Sprite;
 private var _back1Sprite: TilingSprite;
 private var _back2Sprite: TilingSprite;
 private var _enemySprites: Array<Sprite_Enemy>;
 private var _actorSprites: Array<Sprite_Actor>;

 /**
  * Creates the background of the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function createBackground(): Void;

 /**
  * Creates the battlefield of the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function createBattleField(): Void;

 /**
  * Creates the battleback of the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function createBattleback(): Void;

 /**
  * Updates the battleback of the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function updateBattleback(): Void;

 /**
  * Locates the battleback and adjusts the coordinates of the
  * battleback.
  * @memberof Spriteset_Battle
  */
 public function locateBattleback(): Void;

 /**
  * Returns battleb ack 2 of the battle spriteset.
  *
  * @returns {Bitmap} Instance of the Bitmap class.
  * @memberof Spriteset_Battle
  */
 public function battleback1Bitmap(): Bitmap;

 /**
  * Returns battleback 2 of the battle spriteset.
  *
  * @returns {Bitmap} Instance of the Bitmap class.
  * @memberof Spriteset_Battle
  */
 public function battleback2Bitmap(): Bitmap;

 /**
  *
  *
  * @returns {string} Name of battleback 1 bitmap.
  * @memberof Spriteset_Battle
  */
 public function battleback1Name(): String;

 /**
  *
  *
  * @returns {string} Name of battleback 2 bitmap.
  * @memberof Spriteset_Battle
  */
 public function battleback2Name(): String;

 /**
  * Returns the battleback 1 name as a string.
  *
  * @returns {string} Name of overworld battleback 1 bitmap.
  * @memberof Spriteset_Battle
  */
 public function overworldBattleback1Name(): String;

 /**
  * Returns the battleback 2 name as a string.
  *
  * @returns {string} Name of overworld battleback 2 bitmap.
  * @memberof Spriteset_Battle
  */
 public function overworldBattleback2Name(): String;

 /**
  *
  *
  * @returns {string} Name of the normal battleback 1 bitmap.
  * @memberof Spriteset_Battle
  */
 public function normalBattleback1Name(): String;

 /**
  *
  *
  * @returns {string} Name of the normal battleback 2 bitmap.
  * @memberof Spriteset_Battle
  */
 public function normalBattleback2Name(): String;

 /**
  * Given the specified terrtain type, return
  * the battleback 1 name.
  * @param {number} type Terrain type.
  * @returns {string} Name of the terrtain battleback 1 bitmap.
  * @memberof Spriteset_Battle
  */
 public function terrainBattleback1Name(type: Int): String; // TODO: Enum Terrain Type

 /**
  * Given the specified terrain type, return
  * the battleback 2 name.
  * @param {number} type Terrain type.
  * @returns {string} Name of the terrain battleback 2 bitmap.
  * @memberof Spriteset_Battle
  */
 public function terrainBattleback2Name(type: Int): String;

 /**
  *
  *
  * @returns {string} Name of the default battleback 1 name.
  * @memberof Spriteset_Battle
  */
 public function defaultBattleback1Name(): String;

 /**
  *
  *
  * @returns {string} Name of the default battleback 2 name.
  * @memberof Spriteset_Battle
  */
 public function defaultBattleback2Name(): String;

 /**
  *
  *
  * @returns {string} Name of the ship battleback 1  bitmap.
  * @memberof Spriteset_Battle
  */
 public function shipBattleback1Name(): String;

 /**
  *
  *
  * @returns {string} Name of the ship battleback 2 bitmap.
  * @memberof Spriteset_Battle
  */
 public function shipBattleback2Name(): String;

 public function autotileType(z: Int): Int; // TODO: Add Enum For Auto Tile Type

 /**
  * Creates sprite enemies for the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function createEnemies(): Void;

 public function compareEnemySprite(a: Sprite_Enemy, b: Sprite_Enemy): Int;

 /**
  * Creates sprite actors for the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function createActors(): Void;

 /**
  * Updates the actor sprites on the battle spriteset.
  *
  * @memberof Spriteset_Battle
  */
 public function updateActors(): Void;

 /**
  * Returns all battler sprites on the battle spriteset.
  *
  * @returns {Array<Sprite_Battler>}
  * @memberof Spriteset_Battle
  */
 public function battlerSprites(): Array<Sprite_Battler>;

 /**
  * Returns true if animation is playing on the battle spriteset.
  *
  * @returns {boolean}
  * @memberof Spriteset_Battle
  */
 public function isAnimationPlaying(): Bool;

 public function isEffecting(): Bool;

 /**
  * Returns true if any sprite actor or enemy is moving.
  *
  * @returns {boolean} Representing whether any battle participants are moving.
  * @memberof Spriteset_Battle
  */
 public function isAnyoneMoving(): Bool;

 /**
  * Returns true if the battle spriteset is busy.
  *
  * @returns {boolean}
  * @memberof Spriteset_Battle
  */
 public function isBusy(): Bool;
}
