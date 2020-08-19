package rm.abstracts.scenes;

import rm.scenes.Scene_Status;

@:forward
@:forwardStatics
abstract SceneStatus(Scene_Status) from Scene_Status to Scene_Status {
 public inline function new() {
  this = new Scene_Status();
 }
}
