package rm.scenes;

import rm.windows.Window_Status;

/**
 * Scene class of the status screen in RPGMakerMV.
 */
@:native("Scene_Status")
extern class Scene_Status extends Scene_MenuBase {
 private var _statusWindow: Window_Status;

 /**
  * Refreshes the actor within the status scene.
  *
  * @memberof Scene_Status
  */
 public function refreshActor(): Void;

 /**
  * Handler for when the actor is changed within the status scene.
  *
  * @memberof Scene_Status
  */
 public function onActorChange(): Void;
}
