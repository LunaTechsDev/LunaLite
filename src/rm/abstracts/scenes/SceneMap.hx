package rm.abstracts.scenes;

import rm.scenes.Scene_Map;

@:forward
@:forwardStatics
abstract SceneMap(Scene_Map) from Scene_Map to Scene_Map {
 public inline function new() {
  this = new Scene_Map();
 }
}
