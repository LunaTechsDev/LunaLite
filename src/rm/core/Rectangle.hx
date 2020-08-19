package rm.core;

@:native("Rectangle")
extern class Rectangle extends pixi.core.math.shapes.Rectangle {
 /**
  * @static
  * @property emptyRectangle
  * @type Rectangle
  */
 public static var emptyRectangle: Rectangle;

 /**
  * The rectangle class.
  *
  * @class Rectangle
  * @constructor
  * @param {Number} x The x coordinate for the upper-left corner
  * @param {Number} y The y coordinate for the upper-left corner
  * @param {Number} width The width of the rectangle
  * @param {Number} height The height of the rectangle
  */
 public function new(?x: Float, ?y: Float, ?width: Float, ?height: Float);
}
