package rm.abstracts.scenes;

import rm.scenes.Scene_Options;

@:forward
@:forwardStatics
abstract SceneOptions(Scene_Options) from Scene_Options to Scene_Options {
 public inline function new() {
  this = new Scene_Options();
 }
}
