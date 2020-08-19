package rm.abstracts.scenes;

import rm.scenes.Scene_Name;

@:forward
@:forwardStatics
abstract SceneName(Scene_Name) from Scene_Name to Scene_Name {
 public inline function new() {
  this = new Scene_Name();
 }
}
