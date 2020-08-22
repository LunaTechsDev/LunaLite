package rm.core;

import pixi.core.renderers.webgl.filters.Filter;
import pixi.core.display.DisplayObject;
import js.html.Window;
import pixi.core.graphics.Graphics;
import pixi.core.renderers.canvas.CanvasRenderer;
import js.html.CanvasElement;
import pixi.core.renderers.webgl.Renderer;
import pixi.core.display.Container;

@:native("WindowLayer")
extern class WindowLayer extends Container {
 /**
  * The width of the window layer in pixels.
  *
  * @property width
  * @type Number
  */
 //  public var width:Int;
 /**
  * The height of the window layer in pixels.
  *
  * @property height
  * @type Number
  */
 //  public var height:Int;
 /**
  * The x coordinate of the sprite.
  *
  * @property x
  * @type Number
  */
 //  public var x:Int;
 /**
  * The y coordinate of the sprite.
  *
  * @property y
  * @type Number
  */
 //  public var y:Int;
 /**
  * [read-only] The array of children of the sprite.
  *
  * @property children
  * @type Array<PIXI.DisplayObject>
  */
 //  public var children:Array<DisplayObject>;

 /**
  * [read-only] The object that contains the sprite.
  *
  * @property parent
  * @type PIXI.DisplayObjectContainer
  */
 //  public var parent:Container;
 public var voidFilter: Filter;

 /**
  * The layer which contains game windows.
  *
  * @class WindowLayer
  * @constructor
  */
 public function new();

 /**
  * Sets the x, y, width, and height all at once.
  *
  * @method move
  * @param {Number} x The x coordinate of the window layer
  * @param {Number} y The y coordinate of the window layer
  * @param {Number} width The width of the window layer
  * @param {Number} height The height of the window layer
  */
 public function move(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Updates the window layer for each frame.
  *
  * @method update
  */
 public function update(): Void;

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

 /**
  * @method _renderCanvas
  * @param {PIXI.CanvasRenderer} renderer
  * @private
  */
 @:native("_renderCanvas")
 private function _renderCanvas(renderer: CanvasRenderer): Void;

 /**
  * @method _renderCanvas
  * @param {PIXI.CanvasRenderer} renderer
  * @private
  */
 @:native("_renderCanvas")
 public function renderCanvas(renderer: CanvasRenderer): Void;

 /**
  * @method _renderWebGL
  * @param {PIXI.WebGLRenderer} renderer
  * @private
  */
 @:native("_renderWebGL")
 private function _renderWebGL(renderer: Renderer): Void;

 /**
  * @method _renderWebGL
  * @param {PIXI.WebGLRenderer} renderer
  * @private
  */
 @:native("_renderWebGL")
 public function renderWebGL(renderer: Renderer): Void;

 private var _width: Int;
 private var _height: Int;
 private var _tempCanvas: CanvasElement;
 private var _translationMatrix: Array<Float>;
 private var _windowMask: Graphics;
 private var _renderSprite: Container;

 /**
  * @method _canvasClearWindowRect
  * @param {PIXI.CanvasRenderer} renderSession
  * @param {Window} window
  * @private
  */
 private function _canvasClearWindowRect(renderSession: CanvasRenderer,
  window: Window): Void;

 /**
  * @method _maskWindow
  * @param {Window} window
  * @private
  */
 private function _maskWindow(window: _Window): Void;
}
