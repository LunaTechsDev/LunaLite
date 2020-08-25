package rm.core;

@:expose("Point")
@:native("Point")
extern class Point extends pixi.core.math.Point {
 /**
  * The point class.
  *
  * @class Point
  * @constructor
  * @param {Number} x The x coordinate
  * @param {Number} y The y coordinate
  */
 public function new(?x: Int, ?y: Int);

 /**
  * The x coordinate.
  *
  * @property x
  * @type Number
  */
 @:native("x")
 public var _x: Int;

 /**
  * The y coordinate.
  *
  * @property y
  * @type Number
  */
 @:native("y")
 public var _y: Int;
}
