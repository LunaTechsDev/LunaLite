package rm.sprites;

import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Timer
 *
 * The sprite for displaying the timer.
 */
@:expose("Sprite_Timer")
@:native("Sprite_Timer")
extern class Sprite_Timer extends Sprite {
 private var _seconds: Int;

 /**
  * Creates the bitmap of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public function createBitmap(): Void;

 /**
  * Updates the bitmap of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public function updateBitmap(): Void;

 /**
  * Redraws the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public function redraw(): Void;

 /**
  * Returns the text of the timer.
  *
  * @returns {string} The text displayed on the timer.
  * @memberof Sprite_Timer
  */
 public function timerText(): String;

 /**
  * Updates the positon of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public function updatePosition(): Void;

 /**
  * Updates the visibility of the sprite timer.
  *
  * @memberof Sprite_Timer
  */
 public function updateVisibility(): Void;
}
