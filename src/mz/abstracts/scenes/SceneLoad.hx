package mz.abstracts.scenes;

import mz.scenes.Scene_Load;

@:forward
@:forwardStatics
abstract SceneLoad(Scene_Load) from Scene_Load to Scene_Load {
 public inline function new() {
  this = new Scene_Load();
 }
}
