package rm.core;

import js.html.AudioElement;

@:native("HTML5Audio")
extern class HTML5Audio {
 private var _initialized: Bool;
 private var _unlocked: Bool;
 private var _audioElement: AudioElement;
 private var _gainTweenInterval: Int;
 private var _tweenGain: Int;
 private var _tweenTargetGain: Int;
 private var _tweenGainStep: Int;
 private var _staticSePath: Bool;
 private var _volume: Int;
 private var _loadListeners: Array<() -> Void>;
 private var _hasError: Bool;
 private var _autoPlay: Bool;
 private var _isLoading: Bool;
 private var _buffered: Bool;

 /**
  * [read-only] The url of the audio file.
  *
  * @property url
  * @type String
  */
 public var url: String;

 /**
  * The volume of the audio.
  *
  * @property volume
  * @type Number
  */
 public var volume: Int;

 /**
  * Sets up the Html5 Audio.
  *
  * @static
  * @method setup
  * @param {String} url The url of the audio file
  */
 public function setup(url: String): Void;

 /**
  * Initializes the audio system.
  *
  * @static
  * @method initialize
  * @return {Boolean} True if the audio system is available
  */
 public function initialize(): Void;

 /**
  * Clears the audio data.
  *
  * @static
  * @method clear
  */
 public function clear(): Void;

 /**
  * Set the URL of static se.
  *
  * @static
  * @param {String} url
  */
 public function setStaticSe(url: String): Void;

 /**
  * Checks whether the audio data is ready to play.
  *
  * @static
  * @method isReady
  * @return {Boolean} True if the audio data is ready to play
  */
 public function isReady(): Bool;

 /**
  * Checks whether a loading error has occurred.
  *
  * @static
  * @method isError
  * @return {Boolean} True if a loading error has occurred
  */
 public function isError(): Bool;

 /**
  * Checks whether the audio is playing.
  *
  * @static
  * @method isPlaying
  * @return {Boolean} True if the audio is playing
  */
 public function isPlaying(): Bool;

 /**
  * Plays the audio.
  *
  * @static
  * @method play
  * @param {Boolean} loop Whether the audio data play in a loop
  * @param {Number} offset The start position to play in seconds
  */
 public function play(loop: Bool, offset: Float): Void;

 /**
  * Stops the audio.
  *
  * @static
  * @method stop
  */
 public function stop(): Void;

 /**
  * Performs the audio fade-in.
  *
  * @static
  * @method fadeIn
  * @param {Number} duration Fade-in time in seconds
  */
 public function fadeIn(duration: Int): Void;

 /**
  * Performs the audio fade-out.
  *
  * @static
  * @method fadeOut
  * @param {Number} duration Fade-out time in seconds
  */
 public function fadeOut(duration: Int): Void;

 /**
  * Gets the seek position of the audio.
  *
  * @static
  * @method seek
  */
 public function seek(): Void;

 /**
  * Add a callback function that will be called when the audio data is loaded.
  *
  * @static
  * @method addLoadListener
  * @param {Function} listner The callback function
  */
 private function addLoadListener(listner: () -> Void): Void;

 /**
  * @static
  * @method _setupEventHandlers
  * @private
  */
 private function _setupEventHandlers(): Void;

 /**
  * @static
  * @method _onTouchStart
  * @private
  */
 private function _onTouchStart(): Void;

 /**
  * @static
  * @method _onVisibilityChange
  * @private
  */
 private function _onVisibilityChange(): Void;

 /**
  * @static
  * @method _onLoadedData
  * @private
  */
 private function _onLoadedData(): Void;

 /**
  * @static
  * @method _onError
  * @private
  */
 private function _onError(): Void;

 /**
  * @static
  * @method _onEnded
  * @private
  */
 private function _onEnded(): Void;

 /**
  * @static
  * @method _onHide
  * @private
  */
 private function _onHide(): Void;

 /**
  * @static
  * @method _onShow
  * @private
  */
 private function _onShow(): Void;

 /**
  * @static
  * @method _load
  * @param {String} url
  * @private
  */
 private function _load(url: String): Void;

 /**
  * @static
  * @method _startPlaying
  * @param {Boolean} loop
  * @param {Number} offset
  * @private
  */
 private function _startPlaying(loop: Bool, offset: Float): Void;

 /**
  * @static
  * @method _onLoad
  * @private
  */
 private function _onLoad(): Void;

 /**
  * @static
  * @method _startGainTween
  * @params {Number} duration
  * @private
  */
 private function _startGainTweenfunction(duration: Float): Void;

 /**
  * @static
  * @method _applyTweenValue
  * @param {Number} volume
  * @private
  */
 private function _applyTweenValue(volume: Int): Void;
}
