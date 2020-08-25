package rm.core;

import pixi.core.math.Point;
import pixi.core.textures.BaseTexture;
import js.html.CanvasRenderingContext2D;
import pixi.core.display.DisplayObject;
import pixi.core.renderers.webgl.filters.Filter;
import js.html.CanvasElement;
import pixi.core.renderers.canvas.CanvasRenderer;
import pixi.core.renderers.webgl.Renderer;
import pixi.core.sprites.Sprite;

@:expose("Sprite")
@:native("Sprite")
extern class Sprite extends pixi.core.sprites.Sprite {
 /**
  * Number of the created objects.
  *
  * @static
  * @property _counter
  * @type Number
  */
 public static var _counter: Int;

 /**
  * The image for the sprite.
  *
  * @property bitmap
  * @type Bitmap
  */
 public var bitmap: Bitmap;

 /**
  * The width of the sprite without the scale.
  *
  * @property width
  * @type Number
  */
 //  public var width: Float;
 /**
  * The height of the sprite without the scale.
  *
  * @property height
  * @type Number
  */
 //  public var height: Float;

 /**
  * The opacity of the sprite (0 to 255).
  *
  * @property opacity
  * @type Number
  */
 public var opacity: Float;

 /**
  * The visibility of the sprite.
  *
  * @property visible
  * @type Boolean
  */
 @:native("visible")
 public var visible_: Bool;

 /**
  * The x coordinate of the sprite.
  *
  * @property x
  * @type Number
  */
 @:native("x")
 public var x_: Float;

 /**
  * The y coordinate of the sprite.
  *
  * @property y
  * @type Number
  */
 @:native("y")
 public var y_: Float;

 /**
  * The origin point of the sprite. (0,0) to (1,1).
  *
  * @property anchor
  * @type Point
  */
 public var point: Point;

 /**
  * The scale factor of the sprite.
  *
  * @property scale
  * @type Point
  */
 @:native("scale")
 public var scale_: Point;

 /**
  * The rotation of the sprite in radians.
  *
  * @property rotation
  * @type Number
  */
 @:native("rotation")
 public var rotation_: Float;

 /**
  * The blend mode to be applied to the sprite.
  *
  * @property blendMode
  * @type Number
  */
 @:native("blendMode")
 public var blendMode_: Int;

 /**
  * Sets the filters for the sprite.
  *
  * @property filters
  * @type Array<PIXI.Filter>
  */
 @:native("filters")
 public var filters_: Array<Filter>;

 /**
  * [read-only] The array of children of the sprite.
  *
  * @property children
  * @type Array<PIXI.DisplayObject>
  */
 //  public var children: Array<DisplayObject>;

 /**
  * [read-only] The object that contains the sprite.
  *
  * @property parent
  * @type PIXI.DisplayObjectContainer
  */
 //  public var parent: Container;
 public var spriteId: Int;

 public var opaque: Bool;
 public var voidFilter: Filter;

 /**
  * The basic object that is rendered to the game screen.
  *
  * @class Sprite
  * @constructor
  * @param {Bitmap} bitmap The image for the sprite
  */
 public function new(?bitmap: Bitmap);

 public function initialize(?bitmap: Bitmap): Void;

 /**
  * Updates the sprite for each frame.
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
  * Sets the x and y at once.
  *
  * @method move
  * @param {Number} x The x coordinate of the sprite
  * @param {Number} y The y coordinate of the sprite
  */
 public function move(x: Float, y: Float): Void;

 /**
  * Sets the rectagle of the bitmap that the sprite displays.
  *
  * @method setFrame
  * @param {Number} x The x coordinate of the frame
  * @param {Number} y The y coordinate of the frame
  * @param {Number} width The width of the frame
  * @param {Number} height The height of the frame
  */
 public function setFrame(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Gets the blend color for the sprite.
  *
  * @method getBlendColor
  * @return {Array} The blend color [r, g, b, a]
  */
 public function getBlendColor(): Array<Float>;

 /**
  * Sets the blend color for the sprite.
  *
  * @method setBlendColor
  * @param {Array} color The blend color [r, g, b, a]
  */
 public function setBlendColor(color: Array<Float>): Void;

 /**
  * Gets the color tone for the sprite.
  *
  * @method getColorTone
  * @return {Array} The color tone [r, g, b, gray]
  */
 public function getColorTone(): Array<Float>;

 /**
  * Sets the color tone for the sprite.
  *
  * @method setColorTone
  * @param {Array} tone The color tone [r, g, b, gray]
  */
 public function setColorTone(tone: Array<Float>): Void;

 /**
  * Adds a child to the container.
  *
  * @method addChild
  * @param {PIXI.DisplayObject} child The child to add
  * @return {PIXI.DisplayObject} The child that was added
  */
 public function addChild(child: DisplayObject): DisplayObject;

 /**
  * Adds a child to the container at a specified index.
  *
  * @method addChildAt
  * @param {PIXI.DisplayObject} child The child to add
  * @param {Number} index The index to place the child in
  * @return {PIXI.DisplayObject} The child that was added
  */
 public function addChildAt(child: DisplayObject, index: Int): DisplayObject;

 /**
  * Removes a child from the container.
  *
  * @method removeChild
  * @param {PIXI.DisplayObject} child The child to remove
  * @return {PIXI.DisplayObject} The child that was removed
  */
 public function removeChild(child: DisplayObject): DisplayObject;

 /**
  * Removes a child from the specified index position.
  *
  * @method removeChildAt
  * @param {Number} index The index to get the child from
  * @return {PIXI.DisplayObject} The child that was removed
  */
 public function removeChildAt(index: Int): DisplayObject;

 private var _bitmap: Bitmap;
 private var _frame: Rectangle;
 private var _realFrame: Rectangle;
 private var _offset: Point;
 private var _blendColor: Array<Float>;
 private var _colorTone: Array<Float>;
 private var _canvas: CanvasElement;
 private var _context: CanvasRenderingContext2D;
 private var _tintTexture: BaseTexture;

 /**
  * use heavy renderer that will reduce border artifacts and apply advanced blendModes
  * @type {boolean}
  * @private
  */
 private var _isPicture: Bool;

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
  * @method _isInBitmapRect
  * @param {Float} x
  * @param {Float} y
  * @param {Float} w
  * @param {Float} h
  * @return {Boolean}
  * @private
  */
 private function _isInBitmapRect(x: Float, y: Float, w: Float,
  h: Float): Bool;

 /**
  * @method _needsTint
  * @return {Boolean}
  * @private
  */
 private function _needsTint(): Bool;

 /**
  * @method _createTinter
  * @param {Number} w
  * @param {Number} h
  * @private
  */
 private function _createTinter(w: Float, h: Float): Void;

 /**
  * @method _executeTint
  * @param {Number} x
  * @param {Number} y
  * @param {Number} w
  * @param {Number} h
  * @private
  */
 private function _executeTint(x: Float, y: Float, w: Float, h: Float): Void;

 /**
  * @method _renderCanvas
  * @param {PIXI.CanvasRenderer} renderer
  * @private
  */
 private function _renderCanvas_PIXI(renderer: CanvasRenderer): Void;

 /**
  * @method _renderWebGL
  * @param {PIXI.WebGLRenderer} renderer
  * @private
  */
 private function _renderWebGL_PIXI(renderer: Renderer): Void;

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
  * checks if we need to speed up custom blendmodes
  * @param renderer
  * @private
  */
 private function _speedUpCustomBlendModes(renderer: Renderer): Void;
}
