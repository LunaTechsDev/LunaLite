package rm.sprites;

import rm.types.LunaTea.WeaponImageId;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Weapon
 *
 * The sprite for displaying a weapon image for attacking.
 */
@:expose("Sprite_Weapon")
@:native("Sprite_Weapon")
extern class Sprite_Weapon extends Sprite_Base {
 private var _weaponImageId: WeaponImageId;
 private var _animationCount: Int;
 private var _pattern: Int;

 /**
  * Initializes the members of the weapon sprite object.
  *
  * @memberof Sprite_Weapon
  */
 public function initMembers(): Void;

 public function setup(weaponImageId: WeaponImageId): Void;
 public function animationWait(): Int;

 /**
  * Updates the pattern of the weapon sprite.
  *
  * @memberof Sprite_Weapon
  */
 public function updatePattern(): Void;

 /**
  * Loads the bitmap of the weapon sprite.
  *
  * @memberof Sprite_Weapon
  */
 public function loadBitmap(): Void;

 /**
  * Updates the weapon sprite frames.
  *
  * @memberof Sprite_Weapon
  */
 public function updateFrame(): Void;

 /**
  * Returns true if the weapon sprite is playing.
  *
  * @returns {boolean}
  * @memberof Sprite_Weapon
  */
 public function isPlaying(): Bool;
}
