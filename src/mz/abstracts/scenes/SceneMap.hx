package mz.abstracts.scenes;

import mz.scenes.Scene_Map;

@:forward
@:forwardStatics
abstract SceneMap(Scene_Map) from Scene_Map to Scene_Map {
 public inline function new() {
  this = new Scene_Map();
 }
}
