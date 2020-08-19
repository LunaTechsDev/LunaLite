package rm.core;

import js.html.PointerEvent;
import js.html.MouseEvent;
import js.html.WheelEvent;
import js.html.TouchEvent;
import rm.types.LunaTea.Frames;
import rm.types.rm.TouchInputEvents;

@:native("TouchInput")
extern class TouchInput {
 private static var _mousePressed: Bool;
 private static var _screenPressed: Bool;
 private static var _pressedTime: Int;
 private static var _events: TouchInputEvents;
 private static var _triggered: Bool;
 private static var _cancelled: Bool;
 private static var _moved: Bool;
 private static var _released: Bool;
 private static var _wheelX: Float;
 private static var _wheelY: Float;
 private static var _x: Int;
 private static var _y: Int;
 private static var _date: Int;

 @:native("_x")
 public static var px: Int;
 @:native("_y")
 public static var py: Int;

 /**
  * The wait time of the pseudo key repeat in frames.
  *
  * @static
  * @property keyRepeatWait
  * @type Number
  */
 public static var keyRepeatWait: Frames;

 /**
  * The interval of the pseudo key repeat in frames.
  *
  * @static
  * @property keyRepeatInterval
  * @type Number
  */
 public static var keyRepeatInterval: Frames;

 /**
  * [read-only] The horizontal scroll amount.
  *
  * @static
  * @property wheelX
  * @type Number
  */
 public static var wheelX: Float;

 /**
  * [read-only] The vertical scroll amount.
  *
  * @static
  * @property wheelY
  * @type Number
  */
 public static var wheelY: Float;

 /**
  * [read-only] The x coordinate on the canvas area of the latest touch event.
  *
  * @static
  * @property x
  * @type Number
  */
 public static var x: Int;

 /**
  * [read-only] The y coordinate on the canvas area of the latest touch event.
  *
  * @static
  * @property y
  * @type Number
  */
 public static var y: Int;

 /**
  * [read-only] The time of the last input in milliseconds.
  *
  * @static
  * @property date
  * @type Number
  */
 public static var date: Int;

 /**
  * Initializes the touch system.
  *
  * @static
  * @method initialize
  */
 public static function initialize(): Void;

 /**
  * Clears all the touch data.
  *
  * @static
  * @method clear
  */
 public static function clear(): Void;

 /**
  * Updates the touch data.
  *
  * @static
  * @method update
  */
 public static function update(): Void;

 /**
  * Checks whether the mouse button or touchscreen is currently pressed down.
  *
  * @static
  * @method isPressed
  * @return {Boolean} True if the mouse button or touchscreen is pressed
  */
 public static function isPressed(): Bool;

 /**
  * Checks whether the left mouse button or touchscreen is just pressed.
  *
  * @static
  * @method isTriggered
  * @return {Boolean} True if the mouse button or touchscreen is triggered
  */
 public static function isTriggered(): Bool;

 /**
  * Checks whether the left mouse button or touchscreen is just pressed
  * or a pseudo key repeat occurred.
  *
  * @static
  * @method isRepeated
  * @return {Boolean} True if the mouse button or touchscreen is repeated
  */
 public static function isRepeated(): Bool;

 /**
  * Checks whether the left mouse button or touchscreen is kept depressed.
  *
  * @static
  * @method isLongPressed
  * @return {Boolean} True if the left mouse button or touchscreen is long-pressed
  */
 public static function isLongPressed(): Bool;

 /**
  * Checks whether the right mouse button is just pressed.
  *
  * @static
  * @method isCancelled
  * @return {Boolean} True if the right mouse button is just pressed
  */
 public static function isCancelled(): Bool;

 /**
  * Checks whether the mouse or a finger on the touchscreen is moved.
  *
  * @static
  * @method isMoved
  * @return {Boolean} True if the mouse or a finger on the touchscreen is moved
  */
 public static function isMoved(): Bool;

 /**
  * Checks whether the left mouse button or touchscreen is released.
  *
  * @static
  * @method isReleased
  * @return {Boolean} True if the mouse button or touchscreen is released
  */
 public static function isReleased(): Bool;

 /**
  * @static
  * @method _setupEventHandlers
  * @private
  */
 private static function _setupEventHandlers(): Void;

 /**
  * @static
  * @method _onMouseDown
  * @param {MouseEvent} event
  * @private
  */
 private static function _onMouseDown(event: MouseEvent): Void;

 /**
  * @static
  * @method _onLeftButtonDown
  * @param {MouseEvent} event
  * @private
  */
 private static function _onLeftButtonDown(event: MouseEvent): Void;

 /**
  * @static
  * @method _onMiddleButtonDown
  * @param {MouseEvent} event
  * @private
  */
 private static function _onMiddleButtonDown(event: MouseEvent): Void;

 /**
  * @static
  * @method _onRightButtonDown
  * @param {MouseEvent} event
  * @private
  */
 private static function _onRightButtonDown(event: MouseEvent): Void;

 /**
  * @static
  * @method _onMouseMove
  * @param {MouseEvent} event
  * @private
  */
 private static function _onMouseMove(event: MouseEvent): Void;

 /**
  * @static
  * @method _onMouseUp
  * @param {MouseEvent} event
  * @private
  */
 private static function _onMouseUp(event: MouseEvent): Void;

 /**
  * @static
  * @method _onWheel
  * @param {WheelEvent} event
  * @private
  */
 private static function _onWheel(event: WheelEvent): Void;

 /**
  * @static
  * @method _onTouchStart
  * @param {TouchEvent} event
  * @private
  */
 private static function _onTouchStart(event: TouchEvent): Void;

 /**
  * @static
  * @method _onTouchMove
  * @param {TouchEvent} event
  * @private
  */
 private static function _onTouchMove(event: TouchEvent): Void;

 /**
  * @static
  * @method _onTouchEnd
  * @param {TouchEvent} event
  * @private
  */
 private static function _onTouchEnd(event: TouchEvent): Void;

 /**
  * @static
  * @method _onTouchCancel
  * @param {TouchEvent} event
  * @private
  */
 private static function _onTouchCancel(event: TouchEvent): Void;

 /**
  * @static
  * @method _onPointerDown
  * @param {PointerEvent} event
  * @private
  */
 private static function _onPointerDown(event: PointerEvent): Void;

 /**
  * @static
  * @method _onTrigger
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private static function _onTrigger(x: Int, y: Int): Void;

 /**
  * @static
  * @method _onCancel
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private static function _onCancel(x: Int, y: Int): Void;

 /**
  * @static
  * @method _onMove
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private static function _onMove(x: Int, y: Int): Void;

 /**
  * @static
  * @method _onRelease
  * @param {Number} x
  * @param {Number} y
  * @private
  */
 private static function _onRelease(x: Int, y: Int): Void;
}
