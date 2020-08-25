package rm.core;

import pixi.core.display.Container;

@:expose("Weather")
@:native("Weather")
extern class Weather extends Container {
 /**
  * The type of the weather in ['none', 'rain', 'storm', 'snow'].
  *
  * @property type
  * @type String
  */
 public var type: String;

 /**
  * The power of the weather in the range (0, 9).
  *
  * @property power
  * @type Number
  */
 public var power: Int;

 /**
  * The origin point of the weather for scrolling.
  *
  * @property origin
  * @type Point
  */
 public var origin: Point;

 /**
  * The weather effect which displays rain, storm, or snow.
  *
  * @class Weather
  * @constructor
  */
 public function new();

 /**
  * Updates the weather for each frame.
  *
  * @method update
  */
 public function update(): Void;

 private var _width: Int;
 private var _height: Int;
 private var _sprites: Array<Sprite>;
 private var _rainBitmap: Bitmap;
 private var _stormBitmap: Bitmap;
 private var _snowBitmap: Bitmap;
 private var _dimmerSprite: ScreenSprite;

 /**
  * @method _createBitmaps
  * @private
  */
 private function _createBitmaps(): Void;

 /**
  * @method _createDimmer
  * @private
  */
 private function _createDimmer(): Void;

 /**
  * @method _updateDimmer
  * @private
  */
 private function _updateDimmer(): Void;

 /**
  * @method _updateAllSprites
  * @private
  */
 private function _updateAllSprites(): Void;

 /**
  * @method _addSprite
  * @private
  */
 private function _addSprite(): Void;

 /**
  * @method _removeSprite
  * @private
  */
 private function _removeSprite(): Void;

 /**
  * @method _updateSprite
  * @param {Sprite} sprite
  * @private
  */
 private function _updateSprite(sprite: Sprite): Void;

 /**
  * @method _updateRainSprite
  * @param {Sprite} sprite
  * @private
  */
 private function _updateRainSprite(sprite: Sprite): Void;

 /**
  * @method _updateStormSprite
  * @param {Sprite} sprite
  * @private
  */
 private function _updateStormSprite(sprite: Sprite): Void;

 /**
  * @method _updateSnowSprite
  * @param {Sprite} sprite
  * @private
  */
 private function _updateSnowSprite(sprite: Sprite): Void;

 /**
  * @method _rebornSprite
  * @param {Sprite} sprite
  * @private
  */
 private function _rebornSprite(sprite: Sprite): Void;
}
