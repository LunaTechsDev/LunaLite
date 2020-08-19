package rm.abstracts.scenes;

import rm.scenes.Scene_Title;

@:forward
@:forwardStatics
abstract SceneTitle(Scene_Title) from Scene_Title from Scene_Title {
 public inline function new() {
  this = new Scene_Title();
 }
}
