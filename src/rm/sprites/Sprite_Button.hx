package rm.sprites;

import rm.core.Rectangle;
import rm.core.Sprite;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Button
 *
 * The sprite for displaying a button.
 */
@:native("Sprite_Button")
extern class Sprite_Button extends Sprite {
 private var _touching: Bool;
 private var _coldFrame: Rectangle;
 private var _hotFrame: Rectangle;
 private var _clickHandler: () -> Void;

 /**
  * Update method, which checks if the sprite is being touched and updates
  * the current frame.
  *
  * @memberof Sprite_Button
  */
 public function updateFrame(): Void;

 /**
  * Set the button sprites cold frame.
  *
  * @param {Int} x
  * @param {Int} y
  * @param {Int} width
  * @param {Int} height
  *
  * @memberof Sprite_Button
  *
  */
 public function setColdFrame(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Set the button sprites hot frame
  *
  * @param {Int} x
  * @param {Int} y
  * @param {Int} width
  * @param {Int} height
  *
  * @memberof Sprite_Button
  *
  */
 public function setHotFrame(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Creates a new handler and binds it to the button.
  *
  * @param {function} height
  * @memberof Sprite_Button
  */
 public function setClickHandler(method: () -> Void): Void;

 /**
  * Calls the handler method bound to the button.
  *
  * @param {function} height
  * @memberof Sprite_Button
  */
 public function callClickHandler(): Void;

 /**
  * Processes weather or not the button is being touched and calls the handler
  * bound to the button.
  * @memberof Sprite_Button
  */
 public function processTouch(): Void;

 /**
  * Returns true if the sprite button is currently active.
  * @returns {Bool}
  * @memberof Sprite_Button
  */
 public function isActive(): Bool;

 /**
  * Returns true is the button is presently being touched.
  * @returns {Bool}
  * @memberof Sprite_Button
  */
 public function isButtonTouched(): Bool;

 /**
  * Changes the x coordinate of the screen to local sprite x coordinate.
  * @param {Int} x
  * @returns {Int}
  * @memberof Sprite_Button
  */
 public function canvasToLocalX(x: Int): Int;

 /**
  * Changes the y coordinate of the screen
  * to local sprite y coordinate.
  * @param {Int} y
  * @returns {Int}
  * @memberof Sprite_Button
  */
 public function canvasToLocalY(y: Int): Int;
}
