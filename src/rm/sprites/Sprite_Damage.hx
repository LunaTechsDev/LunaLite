package rm.sprites;

import rm.core.Sprite;
import rm.core.Bitmap;
import rm.objects.Game_Actor;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Damage
 *
 * The sprite for displaying a popup damage.
 */
@:expose("Sprite_Damage")
@:native("Sprite_Damage")
extern class Sprite_Damage extends Sprite {
 private var _duration: Int;

 /**
  * Array of 3 numbers of RGB
  */
 private var _flashColor: Array<Int>; // TODO: create Color Abstract With Array RGB Format

 private var _flashDuration: Int;

 private var _damageBitmap: Bitmap;

 public function setup(target: Game_Actor): Void;

 public function setupCriticalEffect(): Void;

 /**
  * Returns the digit width of the sprite damage.
  *
  * @returns {number}
  * @memberof Sprite_Damage
  */
 public function digitWidth(): Int;

 /**
  * Returns the digit height of the sprite damage.
  *
  * @returns {number}
  * @memberof Sprite_Damage
  */
 public function digitHeight(): Int;

 /**
  * Creates the miss display of the damage sprite.
  *
  * @memberof Sprite_Damage
  */
 public function createMiss(): Void;

 public function createDigits(baseRow: Int, value: Int): Void;

 /**
  * Creates the child sprite of the damage sprite for displaying damage.
  *
  * @returns {Sprite}
  * @memberof Sprite_Damage
  */
 public function createChildSprite(): Sprite;

 public function updateChild(sprite: Sprite): Void;

 /**
  * Updates the flash of the damage sprite.
  *
  * @memberof Sprite_Damage
  */
 public function updateFlash(): Void;

 /**
  * Updates the opacity of the damage sprite.
  *
  * @memberof Sprite_Damage
  */
 public function updateOpacity(): Void;

 /**
  * Returns true if the damage sprite is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Damage
  */
 public function isPlaying(): Bool;
}
