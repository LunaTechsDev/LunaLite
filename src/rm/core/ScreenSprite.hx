package rm.core;

@:native("ScreenSprite")
extern class ScreenSprite extends pixi.core.sprites.Sprite {
 /**
  * The opacity of the sprite (0 to 255).
  *
  * @property opacity
  * @type Number
  */
 public var opacity: Int;

 /**
  * The sprite which covers the entire game screen.
  *
  * @class ScreenSprite
  * @constructor
  */
 public function new();

 /**
  * Sets black to the color of the screen sprite.
  *
  * @method setBlack
  */
 public function setBlack(): Void;

 /**
  * Sets white to the color of the screen sprite.
  *
  * @method setWhite
  */
 public function setWhite(): Void;

 /**
  * Sets the color of the screen sprite by values.
  *
  * @method setColor
  * @param {Number} r The red value in the range (0, 255)
  * @param {Number} g The green value in the range (0, 255)
  * @param {Number} b The blue value in the range (0, 255)
  */
 public function setColor(?r: Int, ?g: Int, ?b: Int): Void;

 private var _graphics: pixi.core.graphics.Graphics;

 /**
  * The red value in range (0, 255)
  */
 private var _red: Int;

 /**
  * The blue value in range (0, 255)
  */
 private var _green: Int;

 /**
  * The blue value in range (0, 255)
  */
 private var _blue: Int;

 /**
  * The string for color text
  */
 private var _colorText: String;
}
