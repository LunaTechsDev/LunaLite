package rm.objects;

import rm.objects.Game_Picture;

/**
 * The game object class for screen effect data, such as
 * changes in color tone and flashes.
 * aliased as $gameScreen.
 * @class Game_Screen
 */
@:expose("Game_Screen")
@:native("Game_Screen")
extern class Game_Screen {
 private var _shake: Int;
 private var _shakePower: Int;
 private var _shakeSpeed: Int;
 private var _shakeDuration: Int;
 private var _shakeDirection: Int;

 /**
  * _zoomX property of the game screen.
  *
  * @protected
  * @type {number}
  * @memberof Game_Screen
  */
 private var _zoomX: Float;

 /**
  * _zoomY property of the game screen.
  *
  * @protected
  * @type {number}
  * @memberof Game_Screen
  */
 private var _zoomY: Float;

 private var _zoomScale: Float;
 private var _zoomScaleTarget: Float;
 private var _zoomDuration: Int;
 private var _weatherType: String;
 private var _weatherPower: Float;
 private var _weatherPowerTarget: Int;
 private var _weatherDuration: Int;

 /**
  * The _brightness property of the game screen;
  * returned when calling the brightness method.
  * @protected
  * @type {number}
  * @memberof Game_Screen
  */
 private var _brightness: Float;

 private var _fadeOutDuration: Int;
 private var _fadeInDuration: Int;
 private var _tone: Array<Int>;
 private var _toneTarget: Array<Int>;
 private var _toneDuration: Int;
 private var _flashColor: Array<Int>;
 private var _flashDuration: Int;

 public function new(): Void;
 public function initialize(): Void;

 /**
  * The array of Game_Pictures that are
  * attached to the game screen.
  * @protected
  * @type {Array<Game_Picture>}
  * @memberof Game_Screen
  */
 private var _pictures: Array<Game_Picture>;

 public function clear(): Void;

 /**
  * Handler for when the battle starts in game; prepares
  * the screen for the battle scene.
  * @memberof Game_Screen
  */
 public function onBattleStart(): Void;

 /**
  * Returns the brightness of the game screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function brightness(): Float;

 public function tone(): Array<Int>;
 public function flashColor(): Array<Int>;
 public function shake(): Float;

 /**
  * Returns the  zoom x coordinate of the screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function zoomX(): Float;

 /**
  * Returns the zoom y coordiante of the screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function zoomY(): Float;

 /**
  * Returns the zoom scale of the screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function zoomScale(): Float;

 /**
  * Returns the current weather type.
  *
  * @returns {string}
  * @memberof Game_Screen
  */
 public function weatherType(): String; // TODO: Refactor to enum for weather type

 /**
  * Returns the weather power.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function weatherPower(): Float;

 /**
  * Returns the specified picture given the picture id.
  *
  * @param {number} pictureId
  * @returns {Game_Picture}
  * @memberof Game_Screen
  */
 public function picture(pictureId: Int): Game_Picture;

 /**
  * Returns the real picture id, given the picture id.
  *
  * @param {number} pictureId
  * @returns {number}
  * @memberof Game_Screen
  */
 public function realPictureId(pictureId: Int): Int;

 /**
  * Clears the screen fade.
  *
  * @memberof Game_Screen
  */
 public function clearFade(): Void;

 /**
  * Clears the screen tone.
  *
  * @memberof Game_Screen
  */
 public function clearTone(): Void;

 /**
  * Clears the screen flash.
  *
  * @memberof Game_Screen
  */
 public function clearFlash(): Void;

 /**
  * Clears the screen shake.
  *
  * @memberof Game_Screen
  */
 public function clearShake(): Void;

 /**
  * Clears the screen zoom.
  *
  * @memberof Game_Screen
  */
 public function clearZoom(): Void;

 /**
  * Clears the screen weather.
  *
  * @memberof Game_Screen
  */
 public function clearWeather(): Void;

 /**
  * Clears the pictures set on the game screen.
  *
  * @memberof Game_Screen
  */
 public function clearPictures(): Void;

 /**
  * Erases the battle pictures.
  *
  * @memberof Game_Screen
  */
 public function eraseBattlePictures(): Void;

 /**
  * Returns the maximum number of pictures set on the game screen.
  *
  * @returns {number}
  * @memberof Game_Screen
  */
 public function maxPictures(): Int;

 public function startFadeOut(duration: Int): Void;

 public function startFadeIn(duration: Int): Void;

 public function startTint(tone: Array<Int>, duration: Int): Void;

 public function startFlash(color: Array<Int>, duration: Int): Void;

 public function startShake(power: Float, speed: Float, duration: Int): Void;

 public function startZoom(x: Float, y: Float, scale: Float,
  duration: Int): Void;

 public function setZoom(x: Float, y: Float, scale: Float): Void;
 // TODO: change the weather type to an num
 public function changeWeather(type: String, power: Float,
  duration: Int): Void;

 /**
  * Updates the game screen.
  *
  * @memberof Game_Screen
  */
 public function update(): Void;

 /**
  * Updates the screen fade out.
  *
  * @memberof Game_Screen
  */
 public function updateFadeOut(): Void;

 /**
  * Updates the screen fade in.
  *
  * @memberof Game_Screen
  */
 public function updateFadeIn(): Void;

 /**
  * Updates the screen tone.
  *
  * @memberof Game_Screen
  */
 public function updateTone(): Void;

 /**
  * Update the screen flash.
  *
  * @memberof Game_Screen
  */
 public function updateFlash(): Void;

 /**
  * Update the screen shake.
  *
  * @memberof Game_Screen
  */
 public function updateShake(): Void;

 /**
  * Update the screen zoom.
  *
  * @memberof Game_Screen
  */
 public function updateZoom(): Void;

 /**
  * Update the screen weather.
  *
  * @memberof Game_Screen
  */
 public function updateWeather(): Void;

 /**
  * Update the screen pictures.
  *
  * @memberof Game_Screen
  */
 public function updatePictures(): Void;

 public function startFlashForDamage(): Void;

 public function showPicture(pictureId: Int, name: String, origin: Float,
  x: Int, y: Int, scaleX: Float, scaleY: Float, opacity: Int,
  blendMode: Int): Void;

 public function movePicture(pictureId: Int, origin: Float, x: Int, y: Int,
  scaleX: Float, scaleY: Float, opacity: Int, blendMode: Int,
  duration: Int): Void;

 public function rotatePicture(pictureId: Int, speed: Int): Void;

 public function tintPicture(pictureId: Int, tone: Array<Int>,
  duration: Int): Void;

 /**
  * Erases a picture from the screen given the respected picture id.
  *
  * @param {number} pictureId
  * @memberof Game_Screen
  */
 public function erasePicture(pictureId: Int): Void;
}
