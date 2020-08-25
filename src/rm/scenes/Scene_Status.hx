package rm.scenes;

import rm.core.Rectangle;
import rm.windows.Window_Status;

/**
 * Scene class of the status screen in RPGMakerMV.
 */
@:expose("Scene_Status")
@:native("Scene_Status")
extern class Scene_Status extends Scene_MenuBase {
 private var _statusWindow: Window_Status;

 #if !compileMV
 public function createProfileWindow(): Void;
 public function createStatusWindow(): Void;
 public function createStatusParamsWindow(): Void;
 public function createStatusEquipWindow(): Void;
 public function statusParamsWindowRect(): Rectangle;
 public function statusEquipWindowRect(): Rectangle;
 public function statusParamsWidth(): Int;
 public function statusParamsHeight(): Int;
 public function profileHeight(): Int;
 #end

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
