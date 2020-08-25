package rm.core;

import pixi.core.textures.BaseTexture;
import js.html.CanvasRenderingContext2D;
import js.html.ImageElement;
import js.html.CanvasElement;

/**
 * Allows you to map pixels to the screen or draw rectangles.
 */
@:expose("Bitmap")
@:native("Bitmap")
extern class Bitmap {
 /**
  * Loads a image file and returns a new bitmap object.
  *
  * @static
  * @method load
  * @param {String} url The image url of the texture
  * @return Bitmap
  */
 public static function load(url: String): Bitmap;

 /**
  * Takes a snapshot of the game screen and returns a new bitmap object.
  *
  * @static
  * @method snap
  * @param {Stage} stage The stage object
  * @return Bitmap
  */
 public static function snap(stage: Stage): Bitmap;

 /**
  * The face name of the font.
  *
  * @property fontFace
  * @type String
  */
 public var fontFace: String;

 /**
  * The size of the font in pixels.
  *
  * @property fontSize
  * @type Number
  */
 public var fontSize: Int;

 /**
  * Whether the font is italic.
  *
  * @property fontItalic
  * @type Boolean
  */
 public var fontItalic: Int;

 /**
  * The color of the text in CSS format.
  *
  * @property textColor
  * @type String
  */
 public var textColor: String;

 /**
  * The color of the outline of the text in CSS format.
  *
  * @property outlineColor
  * @type String
  */
 public var outlineColor: String;

 /**
  * The width of the outline of the text.
  *
  * @property outlineWidth
  * @type Number
  */
 public var outlineWidth: Int;

 /**
  * [read-only] The url of the image file.
  *
  * @property url
  * @type String
  */
 public var url: String;

 /**
  * [read-only] The base texture that holds the image.
  *
  * @property baseTexture
  * @type PIXI.BaseTexture
  */
 public var baseTexture: BaseTexture;

 /**
  * [read-only] The bitmap canvas.
  *
  * @property canvas
  * @type HTMLCanvasElement
  */
 public var canvas: CanvasElement;

 /**
  * [read-only] The 2d context of the bitmap canvas.
  *
  * @property context
  * @type CanvasRenderingContext2D
  */
 public var context: CanvasRenderingContext2D;

 /**
  * [read-only] The width of the bitmap.
  *
  * @property width
  * @type Number
  */
 public var width: Int;

 /**
  * [read-only] The height of the bitmap.
  *
  * @property height
  * @type Number
  */
 public var height: Int;

 /**
  * [read-only] The rectangle of the bitmap.
  *
  * @property rect
  * @type Rectangle
  */
 public var rect: Rectangle;

 /**
  * Whether the smooth scaling is applied.
  *
  * @property smooth
  * @type Boolean
  */
 public var smooth: Bool;

 /**
  * The opacity of the drawing object in the range (0, 255).
  *
  * @property paintOpacity
  * @type Number
  */
 public var paintOpacity: Float;

 /**
  * Cache entry, for images. In all cases _url is the same as cacheEntry.key
  * @type CacheEntry
  */
 public var cacheEntry: CacheEntry;

 /**
  * The basic object that represents an image.
  *
  * @class Bitmap
  * @constructor
  * @param {Int} width The width of the bitmap
  * @param {Int} height The height of the bitmap
  */
 public function new(?width: Int, ?height: Int);

 /**
  * Checks whether the bitmap is ready to render.
  *
  * @method isReady
  * @return {Boolean} True if the bitmap is ready to render
  */
 public function isReady(): Bool;

 /**
  * Checks whether a loading error has occurred.
  *
  * @method isError
  * @return {Boolean} True if a loading error has occurred
  */
 public function isError(): Bool;

 /**
  * Resizes the bitmap.
  *
  * @method resize
  * @param {Number} width The new width of the bitmap
  * @param {Number} height The new height of the bitmap
  */
 public function resize(width: Int, height: Int): Void;

 /**
  * Performs a block transfer.
  *
  * @method blt
  * @param {Bitmap} source The bitmap to draw
  * @param {Number} sx The x coordinate in the source
  * @param {Number} sy The y coordinate in the source
  * @param {Number} sw The width of the source image
  * @param {Number} sh The height of the source image
  * @param {Number} dx The x coordinate in the destination
  * @param {Number} dy The y coordinate in the destination
  * @param {Number} [dw=sw] The width to draw the image in the destination
  * @param {Number} [dh=sh] The height to draw the image in the destination
  */
 public function blt(source: Bitmap, sx: Int, sy: Int, sw: Int, sh: Int,
  dx: Int, dy: Int, ?dw: Int, ?dh: Int): Void;

 /**
  * Returns pixel color at the specified point.
  *
  * @method getPixel
  * @param {Number} x The x coordinate of the pixel in the bitmap
  * @param {Number} y The y coordinate of the pixel in the bitmap
  * @return {String} The pixel color (hex format)
  */
 public function getPixel(x: Int, y: Int): String;

 /**
  * Returns alpha pixel value at the specified point.
  *
  * @method getAlphaPixel
  * @param {Number} x The x coordinate of the pixel in the bitmap
  * @param {Number} y The y coordinate of the pixel in the bitmap
  * @return {String} The alpha value
  */
 public function getAlphaPixel(x: Int, y: Int): String;

 /**
  * Clears the specified rectangle.
  *
  * @method clearRect
  * @param {Number} x The x coordinate for the upper-left corner
  * @param {Number} y The y coordinate for the upper-left corner
  * @param {Number} width The width of the rectangle to clear
  * @param {Number} height The height of the rectangle to clear
  */
 public function clearRect(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Clears the entire bitmap.
  *
  * @method clear
  */
 public function clear(): Void;

 /**
  * Fills the specified rectangle.
  *
  * @method fillRect
  * @param {Number} x The x coordinate for the upper-left corner
  * @param {Number} y The y coordinate for the upper-left corner
  * @param {Number} width The width of the rectangle to clear
  * @param {Number} height The height of the rectangle to clear
  * @param {String} color The color of the rectangle in CSS format
  */
 public function fillRect(x: Int, y: Int, width: Int, height: Int,
  color: String): Void;

 /**
  * Fills the entire bitmap.
  *
  * @method fillAll
  * @param {String} color The color of the rectangle in CSS format
  */
 public function fillAll(color: String): Void;

 /**
  * Draws the rectangle with a gradation.
  *
  * @method gradientFillRect
  * @param {Number} x The x coordinate for the upper-left corner
  * @param {Number} y The y coordinate for the upper-left corner
  * @param {Number} width The width of the rectangle to clear
  * @param {Number} height The height of the rectangle to clear
  * @param {String} color1 The start color of the gradation
  * @param {String} color2 The end color of the gradation
  * @param {Boolean} vertical Whether it draws a vertical gradient
  */
 public function gradientFillRect(x: Int, y: Int, width: Int, height: Int,
  color1: String, color2: String, ?vertical: Bool): Void;

 /**
  * Draw the filled circle.
  *
  * @method drawCircle
  * @param {Number} x The x coordinate of the center of the circle
  * @param {Number} y The y coordinate of the center of the circle
  * @param {Number} radius The radius of the circle
  * @param {String} color The color of the circle in CSS format
  */
 public function drawCircle(x: Float, y: Float, radius: Float,
  color: String): Void;

 /**
  * Draws the outline text to the bitmap.
  *
  * @method drawText
  * @param {String} text The text that will be drawn
  * @param {Number} x The x coordinate for the left of the text
  * @param {Number} y The y coordinate for the top of the text
  * @param {Number} maxWidth The maximum allowed width of the text
  * @param {Number} lineHeight The height of the text line
  * @param {String} align The alignment of the text
  */
 public function drawText(text: String, x: Int, y: Int, maxWidth: Int,
  lineHeight: Int, ?align: String): Void;

 /**
  * Returns the width of the specified text.
  *
  * @method measureTextWidth
  * @param {String} text The text to be measured
  * @return {Number} The width of the text in pixels
  */
 public function measureTextWidth(text: String): Int;

 /**
  * Changes the color tone of the entire bitmap.
  *
  * @method adjustTone
  * @param {Number} r The red strength in the range (-255, 255)
  * @param {Number} g The green strength in the range (-255, 255)
  * @param {Number} b The blue strength in the range (-255, 255)
  */
 public function adjustTone(r: Int, g: Int, b: Int): Void;

 /**
  * Rotates the hue of the entire bitmap.
  *
  * @method rotateHue
  * @param {Number} offset The hue offset in 360 degrees
  */
 public function rotateHue(offset: Float): Void;

 /**
  * Applies a blur effect to the bitmap.
  *
  * @method blur
  */
 public function blur(): Void;

 /**
  * Add a callback function that will be called when the bitmap is loaded.
  *
  * @method addLoadListener
  * @param {Function} listner The callback function
  */
 public function addLoadListener(listner: (bitmap: Bitmap) -> Void): Void;

 /**
  * touch the resource
  * @method touch
  */
 public function touch(): Void;

 /**
  * Performs a block transfer, using assumption that original image was not modified (no hue)
  *
  * @method blt
  * @param {Bitmap} source The bitmap to draw
  * @param {Int} sx The x coordinate in the source
  * @param {Int} sy The y coordinate in the source
  * @param {Int} sw The width of the source image
  * @param {Int} sh The height of the source image
  * @param {Int} dx The x coordinate in the destination
  * @param {Int} dy The y coordinate in the destination
  * @param {Int} [dw=sw] The width to draw the image in the destination
  * @param {Int} [dh=sh] The height to draw the image in the destination
  */
 public function bltImage(source: Bitmap, sx: Int, sy: Int, sw: Int, sh: Int,
  dx: Int, dy: Int, ?dw: Int, ?dh: Int): Void;

 private var _canvas: CanvasElement;
 private var _context: CanvasRenderingContext2D;
 private var _baseTexture: BaseTexture;
 private var _image: ImageElement;
 private var _url: String;
 private var _paintOpacity: Float;
 private var _smooth: Bool;
 private var _loadListeners: () -> Void;
 private var _isLoading: Bool;
 private var _hasError: Bool;

 /**
  * @method _makeFontNameText
  * @return {String} FontNameText
  * @private
  */
 private function _makeFontNameText(): String;

 /**
  * @method _drawTextOutline
  * @param {String} text
  * @param {Number} tx
  * @param {Number} ty
  * @param {Number} maxWidth
  * @private
  */
 private function _drawTextOutline(text: String, tx: Int, ty: Int,
  maxWidth: Int): Void;

 /**
  * @method _drawTextBody
  * @param {String} text
  * @param {Number} tx
  * @param {Number} ty
  * @param {Number} maxWidth
  * @private
  */
 private function _drawTextBody(text: String, tx: Int, ty: Int,
  maxWidth: Int): Void;

 /**
  * @method _onLoad
  * @private
  */
 private function _onLoad(): Void;

 /**
  * @method _callLoadListeners
  * @private
  */
 private function _callLoadListeners(): Void;

 /**
  * @method _onError
  * @private
  */
 private function _onError(): Void;

 /**
  * @method _setDirty
  * @private
  */
 private function _setDirty(): Void;
}
