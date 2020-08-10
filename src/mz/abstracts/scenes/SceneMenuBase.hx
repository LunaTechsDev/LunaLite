package mz.abstracts.scenes;

import mz.scenes.Scene_MenuBase;

@:forward
@:forwardStatics
abstract SceneMenuBase(Scene_MenuBase) from Scene_MenuBase to Scene_MenuBase {
 public inline function new() {
  this = new Scene_MenuBase();
 }
}
