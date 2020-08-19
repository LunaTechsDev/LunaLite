package rm.managers;

import rm.core.HTML5Audio;
import js.html.Audio;
import rm.types.RM;

/**
 * Static class that handles BGM, BGS, ME, and SE.
 */
@:native("AudioManager")
extern class AudioManager {
 private static var _bgmVolume: Int;
 private static var _bgsVolume: Int;
 private static var _meVolume: Int;
 private static var _seVolume: Int;
 private static var _currentBgm: AudioParameters;
 private static var _currentBgs: AudioParameters; // TODO: Create Unifieid Type for Web Audio
 private static var _bgmBuffer: HTML5Audio; // WebAudio
 private static var _bgsBuffer: HTML5Audio; // WebAudio
 private static var _meBuffer: HTML5Audio; // WebAudio
 private static var _seBuffers: Array<HTML5Audio>;
 private static var _staticBuffers: Array<HTML5Audio>;
 private static var _replayFadeTime: Int;
 private static var _path: String;
 private static var _blobUrl: String;

 private static var bgmVolume: Int;
 private static var bgsVolume: Int;
 private static var meVolume: Int;
 private static var seVolume: Int;

 public static function playBgm(bgm: AudioParameters, ?pos: Float): Void;
 public static function replayBgm(bgm: AudioParameters): Void;
 public static function isCurrentBgm(bgm: AudioParameters): Bool;
 public static function updateBgmParameters(bgm: AudioParameters): Void;
 public static function pdateCurrentBgm(bgm: AudioParameters,
  pos: Float): Void;
 public static function stopBgm(): Void;
 public static function fadeOutBgm(duration: Int): Void;
 public static function fadeInBgm(duration: Int): Void;

 public static function playBgs(bgs: AudioParameters, ?pos: Float): Void;
 public static function replayBgs(bgs: AudioParameters): Void;
 public static function isCurrentBgs(bgs: AudioParameters): Bool;
 public static function updateBgsParameters(bgs: AudioParameters): Void;
 public static function updateCurrentBgs(bgs: AudioParameters,
  pos: Float): Void;
 public static function stopBgs(): Void;
 public static function fadeOutBgs(duration: Int): Void;
 public static function fadeInBgs(duration: Int): Void;
 public static function playMe(me: AudioParameters): Void;
 public static function updateMeParameters(me: AudioParameters): Void;
 public static function fadeOutMe(duration: Int): Void;
 public static function stopMe(): Void;

 public static function playSe(se: AudioParameters): Void;
 public static function updateSeParameters(buffer: AudioParameters,
  se: AudioParameters): Void;
 public static function stopSe(): Void;
 public static function playStaticSe(se: AudioParameters): Void;
 public static function loadStaticSe(se: AudioParameters): Void;
 public static function isStaticSe(se: AudioParameters): Bool;
 public static function stopAll(): Void;
 public static function saveBgm(): AudioParameters;
 public static function saveBgs(): AudioParameters;
 public static function makeEmptyAudioObject(): AudioParameters;
 public static function createBuffer(): HTML5Audio;
 public static function updateBufferParameters(buffer: AudioParameters,
  configVolume: Int, audio: AudioParameters): Void;
 public static function audioFileExt(): String;
 public static function shouldUseHtml5Audio(): String;
 public static function checkErrors(): Void;
 public static function checkWebAudioError(?webAudio: HTML5Audio): Void;
 public static function playEncryptedBgm(bgm: AudioParameters,
  ?pos: Float): Void;
 public static function createDecryptBuffer(url: String, bgm: AudioParameters,
  ?pos: Float): Void;
}
