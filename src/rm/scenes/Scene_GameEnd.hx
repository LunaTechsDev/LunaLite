package rm.scenes;

import rm.windows.Window_GameEnd;

/**
 * Scene class of the game end screen.
 */
@:native("Scene_GameEnd")
extern class Scene_GameEnd extends Scene_MenuBase {
 private var _commandWindow: Window_GameEnd;

 public function stop(): Void;

 /**
  * Creates the background for
  * the game end scene.
  * @memberof Scene_GameEnd
  */
 public function createBackground(): Void;

 /**
  * Creates the command window
  * for the game end screen.
  * @memberof Scene_GameEnd
  */
 public function createCommandWindow(): Void;

 /**
  * Handler for when to title
  * is clicked within the game end screen.
  * @memberof Scene_GameEnd
  */
 public function commandToTitle(): Void;
}
