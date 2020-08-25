package rm.core;

import pixi.core.math.Point;
import pixi.core.display.DisplayObject;
import pixi.core.display.Container;

@:expose("Window")
@:native("Window")
extern class _Window extends Container {
 /**
  * The origin point of the window for scrolling.
  *
  * @property origin
  * @type Point
  */
 public var origin: Point;

 /**
  * The active state for the window.
  *
  * @property active
  * @type Boolean
  */
 public var active: Bool;

 /**
  * The visibility of the down scroll arrow.
  *
  * @property downArrowVisible
  * @type Boolean
  */
 public var downArrowVisible: Bool;

 /**
  * The visibility of the up scroll arrow.
  *
  * @property upArrowVisible
  * @type Boolean
  */
 public var upArrowVisible: Bool;

 /**
  * The visibility of the pause sign.
  *
  * @property pause
  * @type Boolean
  */
 public var pause: Bool;

 /**
  * The image used as a window skin.
  *
  * @property windowskin
  * @type Bitmap
  */
 public var windowskin: Bitmap;

 /**
  * The bitmap used for the window contents.
  *
  * @property contents
  * @type Bitmap
  */
 public var contents: Bitmap;

 /**
  * The width of the window in pixels.
  *
  * @property width
  * @type Number
  */
 // public var width: Int;
 /**
  * The height of the window in pixels.
  *
  * @property height
  * @type Number
  */
 // public var height: Int;

 /**
  * The size of the padding between the frame and contents.
  *
  * @property padding
  * @type Number
  */
 public var padding: Float;

 /**
  * The size of the margin for the window background.
  *
  * @property margin
  * @type Number
  */
 public var margin: Float;

 /**
  * The opacity of the window without contents (0 to 255).
  *
  * @property opacity
  * @type Number
  */
 public var opacity: Float;

 /**
  * The opacity of the window background (0 to 255).
  *
  * @property backOpacity
  * @type Number
  */
 public var backOpacity: Float;

 /**
  * The opacity of the window contents (0 to 255).
  *
  * @property contentsOpacity
  * @type Number
  */
 public var contentsOpacity: Float;

 /**
  * The openness of the window (0 to 255).
  *
  * @property openness
  * @type Number
  */
 public var openness: Float;

 /**
  * The width of the content area in pixels.
  */
 public var innerWidth: Float;

 /**
  * The height of the content area in pixels.
  */
 public var innerHeight: Float;

 /**
  * The rectangle of the content area
  */
 public var innerRect: Rectangle;

 /**
  * The visibility of the sprite.
  *
  * @property visible
  * @type Boolean
  */
 // public var visible: Bool;
 /**
  * The x coordinate of the sprite.
  *
  * @property x
  * @type Number
  */
 // public var x: Float;
 /**
  * The y coordinate of the sprite.
  *
  * @property y
  * @type Number
  */
 // public var y: Float;
 /**
  * [read-only] The array of children of the sprite.
  *
  * @property children
  * @type Array<PIXI.DisplayObject>
  */
 // public var children: Array<DisplayObject>;
 /**
  * [read-only] The object that contains the sprite.
  *
  * @property parent
  * @type PIXI.DisplayObjectContainer
  */
 // public var parent: Container;

 /**
  * The window in the game.
  *
  * @class Window
  * @constructor
  */
 public function new();

 /**
  * Updates the window for each frame.
  *
  * @method update
  */
 public function update(): Void;

 /**
  * Sets the x, y, width, and height all at once.
  *
  * @method move
  * @param {Number} x The x coordinate of the window
  * @param {Number} y The y coordinate of the window
  * @param {Number} width The width of the window
  * @param {Number} height The height of the window
  */
 public function move(?x: Float, ?y: Float, ?width: Float,
  ?height: Float): Void;

 /**
  * Returns true if the window is completely open (openness == 255).
  *
  * @method isOpen
  * @return {Boolean}
  */
 public function isOpen(): Bool;

 /**
  * Returns true if the window is completely closed (openness == 0).
  *
  * @method isClosed
  * @return {Boolean}
  */
 public function isClosed(): Bool;

 /**
  * Sets the position of the command cursor.
  *
  * @method setCursorRect
  * @param {Number} x The x coordinate of the cursor
  * @param {Number} y The y coordinate of the cursor
  * @param {Number} width The width of the cursor
  * @param {Number} height The height of the cursor
  */
 public function setCursorRect(?x: Float, ?y: Float, ?width: Float,
  ?height: Float): Void;

 /**
  * Changes the color of the background.
  *
  * @method setTone
  * @param {Number} r The red value in the range (-255, 255)
  * @param {Number} g The green value in the range (-255, 255)
  * @param {Number} b The blue value in the range (-255, 255)
  */
 public function setTone(r: Int, g: Int, b: Int): Void;

 /**
  * Adds a child between the background and contents.
  *
  * @method addChildToBack
  * @param {PIXI.DisplayObject} child The child to add
  * @return {PIXI.DisplayObject} The child that was added
  */
 public function addChildToBack(child: DisplayObject): DisplayObject;

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
  * Move the cursor position by the given amount
  * @param x
  * @param y
  */
 public function moveCursorBy(x: Float, y: Float): Void;

 /**
  * Moves the inner children by the given amount.
  * @param x
  * @param y
  */
 public function moveInnerChildrenBy(x: Float, y: Float): Void;

 /**
  * Adds a child to the client area.
  * @param child
  * @return DisplayObject
  */
 public function addInnerChild(child: DisplayObject): DisplayObject;

 /**
  * Draws the window shape into PIXI.Graphics object. Used by WindowLayer.
  * @param graphics
  */
 public function drawShape(graphics: pixi.core.graphics.Graphics): Void;

 /**
  * Destroys the window
  */
 public function destroy(): Void;

 /**
  * @method updateTransform
  * @private
  */
 public function updateTransform(): Void;

 private var _isWindow: Bool;
 private var _windowskin: Bitmap;
 private var _width: Float;
 private var _height: Float;
 private var _cursorRect: Rectangle;
 private var _openness: Float;
 private var _animationCount: Int;
 private var _padding: Float;
 private var _margin: Float;
 private var _colorTone: Array<Float>;
 private var _contentsBackSprite: Sprite;
 private var _cursorSprite: Sprite;
 private var _contentsSprite: Sprite;
 private var _downArrowSprite: Sprite;
 private var _upArrowSprite: Sprite;
 private var _pauseSignSprite: Sprite;

 /**
  * @method _createAllParts
  * @private
  */
 private function _createAllParts(): Void;

 /**
  * Creates the container for the window.
  */
 private function _createContainer(): Void;

 /**
  * Creates the back sprite for the window.
  */
 private function _createBackSprite(): Void;

 /**
  * Creates a frame sprite(standard sprite) and adds
  * it to the container.
  */
 private function _createFrameSprite(): Void;

 /**
  * Creates the client area for the window(window contents).
  */
 private function _createClientArea(): Void;

 /**
  * Creates the contents back sprite in the client area.
  */
 private function _createContentsBackSprite(): Void;

 /**
  * Creates the cursor sprites and
  * adds them to the client area.
  */
 private function _createCursorSprite(): Void;

 /**
  * Creates the contents sprite and adds it
  * to the client area.
  */
 private function _createContentsSprite(): Void;

 /**
  * Create the arrow sprites for the window.
  * These are the up and down arrows.
  */
 private function _createArrowSprites(): Void;

 /**
  * Creates the pause sign sprites.
  */
 private function _createPauseSignSprites(): Void;

 /**
  * @method _onWindowskinLoad
  * @private
  */
 private function _onWindowskinLoad(): Void;

 /**
  * @method _refreshAllParts
  * @private
  */
 private function _refreshAllParts(): Void;

 /**
  * @method _refreshBack
  * @private
  */
 private function _refreshBack(): Void;

 /**
  * @method _refreshFrame
  * @private
  */
 private function _refreshFrame(): Void;

 /**
  * @method _refreshCursor
  * @private
  */
 private function _refreshCursor(): Void;

 /**
  * @method _refreshContents
  * @private
  */
 private function _refreshContents(): Void;

 /**
  * @method _refreshArrows
  * @private
  */
 private function _refreshArrows(): Void;

 /**
  * @method _refreshPauseSign
  * @private
  */
 private function _refreshPauseSign(): Void;

 /**
  * @method _updateCursor
  * @private
  */
 private function _updateCursor(): Void;

 /**
  * @method _updateContents
  * @private
  */
 private function _updateContents(): Void;

 /**
  * @method _updateArrows
  * @private
  */
 private function _updateArrows(): Void;

 /**
  * @method _updatePauseSign
  * @private
  */
 private function _updatePauseSign(): Void;

 /**
  *
  * Updates the client area.
  */
 private function _updateClientArea(): Void;

 /**
  * Updates the contents back.
  */
 private function _updateContentsBack(): Void;

 /**
  * Makes the cursor alpha levels.
  */
 private function _makeCursorAlpha(): Void;

 /**
  * Updates the filter area of the client area.
  */
 private function _updateFilterArea(): Void;

 /**
  * Sets the geometry for the rectangles.
  * @param sprite
  * @param srect
  * @param drect
  * @param m
  */
 private function _setRectPartsGeometry(sprite: Sprite, srect: Rectangle,
  drect: Rectangle, m: Float): Void;
}
