package rm.abstracts.scenes;

import rm.scenes.Scene_Base;

@:forward
@:forwardStatics
abstract SceneBase(Scene_Base) from Scene_Base to Scene_Base {
 public inline function new() {
  this = new Scene_Base();
 }

 public inline function raw(): Scene_Base {
  return this;
 }
}
