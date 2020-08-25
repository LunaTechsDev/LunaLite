package rm.sprites;

import rm.objects.Game_Battler;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_StateIcon
 *
 * The sprite for displaying state icons.
 */
@:expose("Sprite_StateIcon")
@:native("Sprite_StateIcon")
extern class Sprite_StateIcon extends Sprite {
 private static var _iconWidth: Int;
 private static var _iconHeight: Int;
 private var _battler: Game_Battler;
 private var _iconIndex: Int;
 private var _animationCount: Int;
 private var _animationIndex: Int;

 /**
  * Initializes the sprite state icon properties.
  *
  * @memberof Sprite_StateIcon
  */
 public function initMembers(): Void;

 /**
  * Loads the bitmap of the sprite state icon.
  *
  * @memberof Sprite_StateIcon
  */
 public function loadBitmap(): Void;

 public function setup(battler: Game_Battler): Void;
 public function animationWait(): Int;

 /**
  * Updates the icon displayed in the icon sprite.
  *
  * @memberof Sprite_StateIcon
  */
 public function updateIcon(): Void;

 /**
  * Updates the state icon sprite frame.
  *
  * @memberof Sprite_StateIcon
  */
 public function updateFrame(): Void;
}
