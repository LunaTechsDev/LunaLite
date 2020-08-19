package rm.objects;

/**
 * -----------
 * The game object class for a picture.
 *
 */
@:native("Game_Picture")
extern class Game_Picture {
 /**
  * _name property of the current picture.
  *
  * @protected
  * @type {string}
  * @memberof Game_Picture
  */
 private var _name: String;

 private var _origin: Float;
 private var _x: Int;
 private var _y: Int;
 private var _scaleX: Float;
 private var _scaleY: Float;
 private var _opacity: Int;
 private var _blendMode: Int;
 private var _targetX: Int;
 private var _targetY: Int;
 private var _targetScaleX: Float;
 private var _targetScaleY: Float;
 private var _targetOpacity: Int;
 private var _duration: Int;
 private var _tone: Array<Int>;
 private var _toneTarget: Array<Int>;
 private var _toneDuration: Int;
 private var _angle: Float;
 private var _rotationSpeed: Float;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * Returns the name of the game picture.
  *
  * @returns {string}
  * @memberof Game_Picture
  */
 public function name(): String;

 /**
  * Returns the origin of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function origin(): Float;

 /**
  * Returns the picture x coordinate.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function x(): Int;

 /**
  * Returns the picture y coordinate.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function y(): Int;

 /**
  * Returns x scale of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function scaleX(): Float;

 /**
  * Returns the y scale of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function scaleY(): Float;

 /**
  * Returns the opacity of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function opacity(): Int;

 /**
  * Returns the blend mode of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function blendMode(): Int; // TODO: turn this into an enum

 /**
  * Returns the tone of the game picture.
  *
  * @returns {Array<number>}
  * @memberof Game_Picture
  */
 public function tone(): Array<Int>;

 /**
  * Returns the angle of the game picture.
  *
  * @returns {number}
  * @memberof Game_Picture
  */
 public function angle(): Float;

 public function initBasic(): Void;
 public function initTarget(): Void;
 public function initTone(): Void;
 public function initRotation(): Void;
 public function show(name: String, origin: Float, x: Int, y: Int,
  scaleX: Float, scaleY: Float, opacity: Int, blendMode: Int): Void;
 public function move(origin: Float, x: Int, y: Int, scaleX: Float,
  scaleY: Float, opacity: Int, blendMode: Int, duration: Int): Void;
 public function rotate(speed: Float): Void;
 public function tint(tone: Array<Int>, duration: Int): Void;

 /**
  * Erases the game picture.
  *
  * @memberof Game_Picture
  */
 public function erase(): Void;

 /**
  * Updates the game picture.
  *
  * @memberof Game_Picture
  */
 public function update(): Void;

 /**
  * Updates the movement of the game picture.
  *
  * @memberof Game_Picture
  */
 public function updateMove(): Void;

 /**
  * Updates the tone of the game picture.
  *
  * @memberof Game_Picture
  */
 public function updateTone(): Void;

 /**
  * Updates the rotation of the game picture.
  *
  * @memberof Game_Picture
  */
 public function updateRotation(): Void;
}
