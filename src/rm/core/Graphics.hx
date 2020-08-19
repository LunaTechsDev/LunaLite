package rm.core;

import jsfps.fpsmeter.FPSMeter;
import js.html.ImageElement;
import js.html.KeyboardEvent;
import js.html.DivElement;
import pixi.core.renderers.AbstractRenderer;
import pixi.core.renderers.webgl.Renderer;
import pixi.core.renderers.systems.System;
import js.html.VideoElement;
import js.html.CanvasElement;

/**
 * The static class that carries out graphics processing.
 *
 * @class Graphics
 */
@:native("Graphics")
extern class Graphics {
 /**
  * The total frame count of the game screen.
  *
  * @static
  * @property frameCount
  * @type Number
  */
 public static var frameCount: Int;

 /**
  * The alias of PIXI.blendModes.NORMAL.
  *
  * @static
  * @property BLEND_NORMAL
  * @type Number
  * @final
  */
 public static var BLEND_NORMAL: Int;

 /**
  * The alias of PIXI.blendModes.ADD.
  *
  * @static
  * @property BLEND_ADD
  * @type Number
  * @final
  */
 public static var BLEND_ADD: Int;

 /**
  * The alias of PIXI.blendModes.MULTIPLY.
  *
  * @static
  * @property BLEND_MULTIPLY
  * @type Number
  * @final
  */
 public static var BLEND_MULTIPLY: Int;

 /**
  * The alias of PIXI.blendModes.SCREEN.
  *
  * @static
  * @property BLEND_SCREEN
  * @type Number
  * @final
  */
 public static var BLEND_SCREEN: Int;

 /**
  * The width of the game screen.
  *
  * @static
  * @property width
  * @type Number
  */
 public static var width: Int;

 /**
  * The height of the game screen.
  *
  * @static
  * @property height
  * @type Number
  */
 public static var height: Int;

 /**
  * The width of the window display area.
  *
  * @static
  * @property boxWidth
  * @type Number
  */
 public static var boxWidth: Int;

 /**
  * The height of the window display area.
  *
  * @static
  * @property boxHeight
  * @type Number
  */
 public static var boxHeight: Int;

 /**
  * The zoom scale of the game screen.
  *
  * @static
  * @property scale
  * @type Number
  */
 public static var scale: Float;

 /**
  * Initializes the graphics system.
  *
  * @static
  * @method initialize
  * @param {Number} width The width of the game screen
  * @param {Number} height The height of the game screen
  * @param {String} type The type of the renderer.
  *                 'canvas', 'webgl', or 'auto'.
  */
 public static function initialize(?width: Int, ?height: Int,
  ?type: String): Void;

 /**
  * Marks the beginning of each frame for FPSMeter.
  *
  * @static
  * @method tickStart
  */
 public static function tickStart(): Void;

 /**
  * Marks the end of each frame for FPSMeter.
  *
  * @static
  * @method tickEnd
  */
 public static function tickEnd(): Void;

 /**
  * Renders the stage to the game screen.
  *
  * @static
  * @method render
  * @param {Stage} stage The stage object to be rendered
  */
 public static function render(?stage: Stage): Void;

 /**
  * Checks whether the renderer type is WebGL.
  *
  * @static
  * @method isWebGL
  * @return {Boolean} True if the renderer type is WebGL
  */
 public static function isWebGL(): Bool;

 /**
  * Checks whether the current browser supports WebGL.
  *
  * @static
  * @method hasWebGL
  * @return {Boolean} True if the current browser supports WebGL.
  */
 public static function hasWebGL(): Bool;

 /**
  * Checks whether the canvas blend mode 'difference' is supported.
  *
  * @static
  * @method canUseDifferenceBlend
  * @return {Boolean} True if the canvas blend mode 'difference' is supported
  */
 public static function canUseDifferenceBlend(): Bool;

 /**
  * Checks whether the canvas blend mode 'saturation' is supported.
  *
  * @static
  * @method canUseSaturationBlend
  * @return {Boolean} True if the canvas blend mode 'saturation' is supported
  */
 public static function canUseSaturationBlend(): Bool;

 /**
  * Sets the source of the "Now Loading" image.
  *
  * @static
  * @method setLoadingImage
  * @param {String} Path of image
  */
 public static function setLoadingImage(src: String): Void;

 /**
  * Initializes the counter for displaying the "Now Loading" image.
  *
  * @static
  * @method startLoading
  */
 public static function startLoading(): Void;

 /**
  * Increments the loading counter and displays the "Now Loading" image if necessary.
  *
  * @static
  * @method updateLoading
  */
 public static function updateLoading(): Void;

 /**
  * Erases the "Now Loading" image.
  *
  * @static
  * @method endLoading
  */
 public static function endLoading(): Void;

 /**
  * Displays the error text to the screen.
  *
  * @static
  * @method printError
  * @param {String} name The name of the error
  * @param {String} message The message of the error
  */
 public static function printError(name: String, message: String): Void;

 /**
  * Shows the FPSMeter element.
  *
  * @static
  * @method showFps
  */
 public static function showFps(): Void;

 /**
  * Hides the FPSMeter element.
  *
  * @static
  * @method hideFps
  */
 public static function hideFps(): Void;

 /**
  * Loads a font file.
  *
  * @static
  * @method loadFont
  * @param {String} name The face name of the font
  * @param {String} url The url of the font file
  */
 public static function loadFont(name: String, url: String): Void;

 /**
  * Checks whether the font file is loaded.
  *
  * @static
  * @method isFontLoaded
  * @param {String} name The face name of the font
  * @return {Boolean} True if the font file is loaded
  */
 public static function isFontLoaded(name: String): Bool;

 /**
  * Starts playback of a video.
  *
  * @static
  * @method playVideo
  * @param {String} src
  */
 public static function playVideo(src: String): Void;

 /**
  * Checks whether the video is playing.
  *
  * @static
  * @method isVideoPlaying
  * @return {Boolean} True if the video is playing
  */
 public static function isVideoPlaying(): Bool;

 /**
  * Checks whether the browser can play the specified video type.
  *
  * @static
  * @method canPlayVideoType
  * @param {String} type The video type to test support for
  * @return {Boolean} True if the browser can play the specified video type
  */
 public static function canPlayVideoType(type: String): Bool;

 /**
  * Converts an x coordinate on the page to the corresponding
  * x coordinate on the canvas area.
  *
  * @static
  * @method pageToCanvasX
  * @param {Number} x The x coordinate on the page to be converted
  * @return {Number} The x coordinate on the canvas area
  */
 public static function pageToCanvasX(x: Int): Int;

 /**
  * Converts a y coordinate on the page to the corresponding
  * y coordinate on the canvas area.
  *
  * @static
  * @method pageToCanvasY
  * @param {Number} y The y coordinate on the page to be converted
  * @return {Number} The y coordinate on the canvas area
  */
 public static function pageToCanvasY(y: Int): Int;

 /**
  * Checks whether the specified point is inside the game canvas area.
  *
  * @static
  * @method isInsideCanvas
  * @param {Number} x The x coordinate on the canvas area
  * @param {Number} y The y coordinate on the canvas area
  * @return {Boolean} True if the specified point is inside the game canvas area
  */
 public static function isInsideCanvas(x: Int, y: Int): Bool;

 /**
  * Calls pixi.js garbage collector
  */
 public static function callGC(): Void;

 private static var _width: Int;
 private static var _height: Int;
 private static var _rendererType: String;
 private static var _boxWidth: Int;
 private static var _boxHeight: Int;
 private static var _scale: Float;
 private static var _realScale: Float;
 private static var _errorPrinter: Bool;
 private static var _canvas: CanvasElement;
 private static var _video: VideoElement;
 private static var _upperCanvas: CanvasElement;
 @:native("_renderer")
 public static var renderer: AbstractRenderer;
 private static var _renderer: AbstractRenderer; // TODO: Might need to change
 private static var _fpsMeter: FPSMeter; // TODO: Add FPSMeter
 private static var _modeBox: DivElement;
 private static var _skipCount: Int;
 private static var _maxSkip: Int;
 private static var _rendered: Bool;
 private static var _loadingImage: ImageElement;
 private static var _loadingCount: Int;
 private static var _fpsMeterToggled: Bool;
 private static var _stretchEnabled: Bool;
 private static var _canUseDifferenceBlend: Bool;
 private static var _canUseSaturationBlend: Bool;
 private static var _hiddenCanvas: CanvasElement;

 /**
  * @static
  * @method _createAllElements
  * @private
  */
 private static function _createAllElements(): Void;

 /**
  * @static
  * @method _updateAllElements
  * @private
  */
 private static function _updateAllElements(): Void;

 /**
  * @static
  * @method _updateRealScale
  * @private
  */
 private static function _updateRealScale(): Void;

 /**
  * @static
  * @method _makeErrorHtml
  * @param {String} name
  * @param {String} message
  * @return {String}
  * @private
  */
 private static function _makeErrorHtml(name: String, message: String): Void;

 /**
  * @static
  * @method _defaultStretchMode
  * @private
  */
 private static function _defaultStretchMode(): Bool;

 /**
  * @static
  * @method _testCanvasBlendModes
  * @private
  */
 private static function _testCanvasBlendModes(): Void;

 /**
  * @static
  * @method _modifyExistingElements
  * @private
  */
 private static function _modifyExistingElements(): Void;

 /**
  * @static
  * @method _createErrorPrinter
  * @private
  */
 private static function _createErrorPrinter(): Void;

 /**
  * @static
  * @method _updateErrorPrinter
  * @private
  */
 private static function _updateErrorPrinter(): Void;

 /**
  * @static
  * @method _createCanvas
  * @private
  */
 private static function _createCanvas(): Void;

 /**
  * @static
  * @method _updateCanvas
  * @private
  */
 private static function _updateCanvas(): Void;

 /**
  * @static
  * @method _createVideo
  * @private
  */
 private static function _createVideo(): Void;

 /**
  * @static
  * @method _updateVideo
  * @private
  */
 private static function _updateVideo(): Void;

 /**
  * @static
  * @method _createUpperCanvas
  * @private
  */
 private static function _createUpperCanvas(): Void;

 /**
  * @static
  * @method _updateUpperCanvas
  * @private
  */
 private static function _updateUpperCanvas(): Void;

 /**
  * @static
  * @method _clearUpperCanvas
  * @private
  */
 private static function _clearUpperCanvas(): Void;

 /**
  * @static
  * @method _paintUpperCanvas
  * @private
  */
 private static function _paintUpperCanvas(): Void;

 /**
  * @static
  * @method _createRenderer
  * @private
  */
 private static function _createRenderer(): Void;

 /**
  * @static
  * @method _updateRenderer
  * @private
  */
 private static function _updateRenderer(): Void;

 /**
  * @static
  * @method _createFPSMeter
  * @private
  */
 private static function _createFPSMeter(): Void;

 /**
  * @static
  * @method _createModeBox
  * @private
  */
 private static function _createModeBox(): Void;

 /**
  * @static
  * @method _createGameFontLoader
  * @private
  */
 private static function _createGameFontLoader(): Void;

 /**
  * @static
  * @method _createFontLoader
  * @param {String} name
  * @private
  */
 private static function _createFontLoader(name: String): Void;

 /**
  * @static
  * @method _centerElement
  * @param {HTMLCanvasElement} element
  * @private
  */
 private static function _centerElement(element: CanvasElement): Void;

 /**
  * @static
  * @method _disableTextSelection
  * @private
  */
 private static function _disableTextSelection(): Void;

 /**
  * @static
  * @method _disableContextMenu
  * @private
  */
 private static function _disableContextMenu(): Void;

 /**
  * @static
  * @method _applyCanvasFilter
  * @private
  */
 private static function _applyCanvasFilter(): Void;

 /**
  * @static
  * @method _onVideoLoad
  * @private
  */
 private static function _onVideoLoad(): Void;

 /**
  * @static
  * @method _onVideoError
  * @private
  */
 private static function _onVideoError(): Void;

 /**
  * @static
  * @method _onVideoEnd
  * @private
  */
 private static function _onVideoEnd(): Void;

 /**
  * @static
  * @method _updateVisibility
  * @param {Boolean} videoVisible
  * @private
  */
 private static function _updateVisibility(videoVisible: Bool): Void;

 /**
  * @static
  * @method _isVideoVisible
  * @return {Boolean}
  * @private
  */
 private static function _isVideoVisible(): Bool;

 /**
  * @static
  * @method _setupEventHandlers
  * @private
  */
 private static function _setupEventHandlers(): Void;

 /**
  * @static
  * @method _onWindowResize
  * @private
  */
 private static function _onWindowResize(): Void;

 /**
  * @static
  * @method _onKeyDown
  * @param {KeyboardEvent} event
  * @private
  */
 private static function _onKeyDown(event: KeyboardEvent): Void;

 /**
  * @static
  * @method _switchFPSMeter
  * @private
  */
 private static function _switchFPSMeter(): Void;

 /**
  * @static
  * @method _switchStretchMode
  * @return {Boolean}
  * @private
  */
 private static function _switchStretchMode(): Void;

 /**
  * @static
  * @method _switchFullScreen
  * @private
  */
 private static function _switchFullScreen(): Void;

 /**
  * @static
  * @method _isFullScreen
  * @return {Boolean}
  * @private
  */
 private static function _isFullScreen(): Bool;

 /**
  * @static
  * @method _requestFullScreen
  * @private
  */
 private static function _requestFullScreen(): Void;

 /**
  * @static
  * @method _cancelFullScreen
  * @private
  */
 private static function _cancelFullScreen(): Void;
}
