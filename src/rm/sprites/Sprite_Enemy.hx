package rm.sprites;

import rm.objects.Game_Enemy;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Enemy
 *
 * The sprite for displaying an enemy.
 */
@:native("Sprite_Enemy")
extern class Sprite_Enemy extends Sprite_Battler {
 private var _enemy: Game_Enemy;
 private var _appeared: Bool;
 private var _battlerName: String;
 private var _battlerHue: Int;
 private var _effectType: String;
 private var _effectDuration: Int;
 private var _shake: Int;
 private var _stateIconSprite: Sprite_StateIcon;

 public function new(battler: Game_Enemy): Void;

 public function initialize(battler: Game_Enemy): Void;

 public function createStateIconSprite(): Void;

 /**
  * Sets the battler to an instance of game enemy.
  *
  * @param {Game_Enemy} battler Instance of game enemy.
  * @memberof Sprite_Enemy
  */
 public function setBattler(battler: Game_Enemy): Void;

 public function loadBitmap(name: String, hue: Int): Void;

 /**
  * Updates the state sprite on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function updateStateSprite(): Void;

 public function initVisibility(): Void;

 public function setupEffect(): Void;

 public function startEffect(effectType: String): Void;

 /**
  * Starts the appearinig effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function startAppear(): Void;

 /**
  * Starts the disappearing effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function startDisappear(): Void;

 /**
  * Starts the whiten effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function startWhiten(): Void;

 /**
  * Starts the blink effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function startBlink(): Void;

 /**
  * Starts the collapse effect of the sprite
  * enemy.
  * @memberof Sprite_Enemy
  */
 public function startCollapse(): Void;

 /**
  * Starts the boss collapse effect of the sprite
  * enemy.
  * @memberof Sprite_Enemy
  */
 public function startBossCollapse(): Void;

 /**
  * Starts the instant collapse effect of the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function startInstantCollapse(): Void;

 public function updateEffect(): Void;

 /**
  * Returns true if the effect type on the sprite enemy
  * is not null.
  * @returns {Bool}
  * @memberof Sprite_Enemy
  */
 public function isEffecting(): Bool;

 /**
  * Revers the sprite enemy to a normal state.
  *
  * @memberof Sprite_Enemy
  */
 public function revertToNormal(): Void;

 /**
  * Updates the whiten effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function updateWhiten(): Void;

 /**
  * Updates the blink effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function updateBlink(): Void;

 /**
  * Updates the appear effect on the sprite enemy.
  *
  * @memberof Sprite_Enemy
  */
 public function updateAppear(): Void;

 public function updateDisappear(): Void;

 /**
  * Updates the collapse effect.
  *
  * @memberof Sprite_Enemy
  */
 public function updateCollapse(): Void;

 /**
  * Updates the boss collapse effect.
  *
  * @memberof Sprite_Enemy
  */
 public function updateBossCollapse(): Void;

 /**
  * Updates the instant collapse effect.
  *
  * @memberof Sprite_Enemy
  */
 public function updateInstantCollapse(): Void;

 public function damageOffsetX(): Int;
 public function damageOffsetY(): Int;
}
