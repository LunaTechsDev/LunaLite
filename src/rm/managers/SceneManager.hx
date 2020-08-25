package rm.managers;

import js.html.Event;
import js.html.KeyboardEvent;
import rm.core.Bitmap;
import rm.scenes.Scene_Base;

/**
 * Manages the scenes of the game.
 */
@:expose("SceneManager")
@:native("SceneManager")
extern class SceneManager {
 @:native("_scene")
 public static var __scene: Scene_Base;
 private static var _scene: Scene_Base;
 @:native("_nextScene")
 public static var __nextScene: Scene_Base;
 private static var _nextScene: Scene_Base;
 @:native("_stack")
 public static var __stack: Array<Any>;
 private static var _stack: Array<Any>;
 @:native("_screenWidth")
 public static var __screenWidth: Int;
 private static var _screenWidth: Int;
 @:native("_screenHeight")
 public static var __screenHeight: Int;
 private static var _screenHeight: Int;
 @:native("_backgroundBitmap")
 public static var __backgroundBitmap: Bitmap;
 private static var _backgroundBitmap: Bitmap;
 @:native("_boxWidth")
 public static var __boxWidth: Int;
 private static var _boxWidth: Int;
 @:native("_boxHeight")
 public static var __boxHeight: Int;
 private static var _boxHeight: Int;
 @:native("_deltaTime")
 public static var __deltaTime: Float;
 private static var _deltaTime: Float;
 @:native("_currentTime")
 public static var __currentTime: Float;
 private static var _currentTime: Float;
 private static var _accumulator: Int;
 @:native("_accumulator")
 public static var __accumulator: Int;

 /**
  * Convenience variable for getting the current scene.
  */
 @:native("_scene")
 public static var currentScene: Any;

 public static function preferableRendererType(): String;
 public static function shouldUseCanvasRenderer(): Bool;

 public static function initialize(): Void;
 public static function initGraphics(): Void;
 public static function initAudio(): Void;
 public static function initInput(): Void;
 public static function initNwjs(): Void;
 public static function update(): Void;
 public static function terminate(): Void;
 public static function tickStart(): Void;
 public static function tickEnd(): Void;
 public static function changeScene(): Void;
 public static function updateScene(): Void;
 public static function renderScene(): Void;
 public static function onSceneCreate(): Void;
 public static function onSceneStart(): Void;
 public static function onSceneLoading(): Void;

 public static function onError(e: Event): Void;
 public static function onKeyDown(event: KeyboardEvent): Void;
 public static function catchException(e: Event): Void;

 public static function isSceneChanging(): Bool;
 public static function isCurrentSceneBusy(): Bool;
 public static function isCurrentSceneStarted(): Bool;
 public static function isNextScene(sceneClass: Any): Bool;
 public static function isPreviousScene(sceneClass: Any): Bool;

 /**
  * Goes to the scene passed in.
  * @param sceneClass
  */
 public static function goto(sceneClass: Any): Void;

 /**
  * Pushes the scene passed in to the scene stack.
  * Immediately goes to the scene passed in.
  * @param sceneClass
  */
 public static function push(sceneClass: Any): Void;

 /**
  * Pops the current scene from the stack.
  */
 public static function pop(): Void;

 /**
  * Exits the current scene.
  */
 public static function exit(): Void;

 public static function clearStack(): Void;

 /**
  * Stops the current scene.
  */
 public static function stop(): Void;

 public static function prepareNextScene(): Void;
 public static function snap(): Bitmap;
 public static function snapForBackground(): Void;
 public static function backgroundBitmap(): Bitmap;
 public static function updateManagers(ticks: Float, delta: Float): Void;
 #if !compileMV
 public static function showDevTools(): Void;
 #else
 #end
}
