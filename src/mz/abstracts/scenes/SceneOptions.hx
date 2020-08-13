package mz.abstracts.scenes;

import mz.scenes.Scene_Options;

@:forward
@:forwardStatics
abstract SceneOptions(Scene_Options) from Scene_Options to Scene_Options {
 public inline function new() {
  this = new Scene_Options();
 }
}
