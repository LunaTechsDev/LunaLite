package rm.core;

import pixi.core.renderers.webgl.Renderer;
import pixi.core.renderers.canvas.CanvasRenderer;

extern class TilingSprite extends pixi.extras.TilingSprite {
 /**
  * The origin point of the tiling sprite for scrolling.
  *
  * @property origin
  * @type Point
  */
 public var origin: Point;

 /**
  * The image for the tiling sprite.
  *
  * @property bitmap
  * @type Bitmap
  */
 public var bitmap: Bitmap;

 /**
  * The opacity of the tiling sprite (0 to 255).
  *
  * @property opacity
  * @type Number
  */
 public var opacity: Int; // TODO: Add Opacity as an Int that only goes to 0 - 255

 /**
  * The visibility of the tiling sprite.
  *
  * @property visible
  * @type Boolean
  */
 public var visibility: Bool;

 /**
  * The x coordinate of the tiling sprite.
  *
  * @property x
  * @type Number
  */
 @:native("x") // TODO: Remove as x and y are redefinition
 public var _x: Int;

 /**
  * The y coordinate of the tiling sprite.
  *
  * @property y
  * @type Number
  */
 @:native("y")
 public var _y: Int;

 public var spriteId: Int;

 /**
  * The sprite object for a tiling image.
  *
  * @class TilingSprite
  * @constructor
  * @param {Bitmap} bitmap The image for the tiling sprite
  */
 public function new(bitmap: Bitmap);

 /**
  * Updates the tiling sprite for each frame.
  *
  * @method update
  */
 public function update(): Void;

 /**
  * @method updateTransform
  * @private
  */
 public function updateTransform(): Void;

 /**
  * Sets the x, y, width, and height all at once.
  *
  * @method move
  * @param {Number} x The x coordinate of the tiling sprite
  * @param {Number} y The y coordinate of the tiling sprite
  * @param {Number} width The width of the tiling sprite
  * @param {Number} height The height of the tiling sprite
  */
 public function move(?x: Int, ?y: Int, ?width: Int, ?height: Int): Void;

 /**
  * Specifies the region of the image that the tiling sprite will use.
  *
  * @method setFrame
  * @param {Number} x The x coordinate of the frame
  * @param {Number} y The y coordinate of the frame
  * @param {Number} width The width of the frame
  * @param {Number} height The height of the frame
  */
 public function setFrame(x: Int, y: Int, width: Int, height: Int): Void;

 public function updateTransformTS(): Void;
 private var _bitmap: Bitmap;
 private var _width: Int;
 private var _height: Int;
 private var _frame: Rectangle;

 /**
  * @method _onBitmapLoad
  * @private
  */
 private function _onBitmapLoad(): Void;

 /**
  * @method _refresh
  * @private
  */
 private function _refresh(): Void;

 /**
  * @method _renderCanvas
  * @param {PIXI.CanvasRenderer} renderer
  * @private
  */
 private function _renderCanvas(renderer: CanvasRenderer): Void;

 /**
  * @method _renderWebGL
  * @param {PIXI.WebGLRenderer} renderer
  * @private
  */
 private function _renderWebGL(renderer: Renderer): Void;

 /**
  * @method generateTilingTexture
  * @param {Boolean} arg
  */
 public function generateTilingTexture(arg: Bool): Void;
}
