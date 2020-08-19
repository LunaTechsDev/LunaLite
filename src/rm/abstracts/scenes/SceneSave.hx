package rm.abstracts.scenes;

import rm.scenes.Scene_Save;

@:forward
@:forwardStatics
abstract SceneSave(Scene_Save) from Scene_Save to Scene_Save {
 public inline function new() {
  this = new Scene_Save();
 }
}
