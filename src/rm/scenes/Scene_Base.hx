package rm.scenes;

import rm.core.WindowLayer;
import rm.core.Stage;
import rm.windows.Window_Base;
import haxe.extern.EitherType;

@:native("Scene_Base")
extern class Scene_Base extends Stage {
 private var _active: Bool;
 private var _fadeSign: Int;
 private var _fadeDuration: Int;
 private var _imageReservationId: EitherType<Dynamic, Int>;
 private var _windowLayer: WindowLayer;
 @:native("_windowLayer")
 public var windowLayer: WindowLayer;

 public function new(): Void;

 /**
  * Initializes the scene.
  * @return Void
  */
 public function initialize(): Void;

 /**
  * Creates the scene's important properties.
  */
 public function create(): Void;

 /**
  * Returns whether the scene is active or not.
  * @return Bool
  */
 public function isActive(): Bool;

 /**
  * Returns if the scene is ready or not.
  * @return Bool
  */
 public function isReady(): Bool;

 /**
  * Starts the scene.
  */
 public function start(): Void;

 /**
  * Updates the scene.
  */
 public function update(): Void;

 /**
  * Stops the scene.
  */
 public function stop(): Void;

 /**
  * Checks if the Scene is busy processing an event
  * or other conditions.
  * @return Bool
  */
 public function isBusy(): Bool;

 /**
  * Terminates/ends the scene.
  */
 public function terminate(): Void;

 /**
  * Creates the window layer on the current scene
  * for displaying any and all windows.
  */
 public function createWindowLayer(): Void;

 /**
  * Adds a child window to the window layer for processing.
  * @param window
  */
 public function addWindow(window: Window_Base): Void;

 /**
  * Request a fadeIn screen process
  * @param duration  [duration=30] The time the process will take to fadeIn the screen.
  * @param white  [white=false] If true the fadeIn will process with a white color else it will be black.
  */
 public function startFadeIn(duration: Int, white: Bool): Void;

 /**
  * Request a fadeOut screen process
  * @param duration  [duration=30] The time the process will take to fadeOut the screen.
  * @param white  [white=false] If true the fadeOut will process with a white color else it will be black.
  */
 public function startFadeOut(duration: Int, white: Bool): Void;

 public function createFadeSprite(white: Bool): Void;

 /**
  * Updates the scene's fade
  */
 public function updateFade(): Void;

 public function updateChildren(): Void;

 /**
  * Pops the current scene and returns to the previous scene if available.
  */
 public function popScene(): Void;

 /**
  * Checks for game over.
  */
 public function checkGameOver(): Void;

 public function fadeOutAll(): Void;

 /**
  * Returns the fade speed.
  * @return Int
  */
 public function fadeSpeed(): Int;

 /**
  * Returns the slow fade speed.
  * @return Int
  */
 public function slowFadeSpeed(): Int;
}
