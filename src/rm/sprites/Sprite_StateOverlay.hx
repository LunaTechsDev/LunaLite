package rm.sprites;

import rm.objects.Game_Battler;

/**
 * -----------------------------------------------------------------------------
 * Sprite_StateOverlay
 *
 * The sprite for displaying an overlay image for a state.
 */
@:native("Sprite_StateOverlay")
extern class Sprite_StateOverlay extends Sprite_Base {
 private var _battler: Game_Battler;
 private var _overlayIndex: Int;
 private var _animationCount: Int;
 private var _pattern: Int;

 /**
  * Initialize the overlay sprite properties.
  *
  * @memberof Sprite_StateOverlay
  */
 public function initMembers(): Void;

 /**
  * Loads the bitmap of the overlay sprite.
  *
  * @memberof Sprite_StateOverlay
  */
 public function loadBitmap(): Void;

 public function setup(battler: Game_Battler): Void;
 public function animationWait(): Int;

 /**
  * Updates the overlay sprite pattern.
  *
  * @memberof Sprite_StateOverlay
  */
 public function updatePattern(): Void;

 /**
  * Updates the overlay sprite frame.
  *
  * @memberof Sprite_StateOverlay
  */
 public function updateFrame(): Void;
}
