package rm.abstracts.scenes;

import rm.scenes.Scene_File;

@:forward
@:forwardStatics
abstract SceneFile(Scene_File) from Scene_File to Scene_File {
 public inline function new() {
  this = new Scene_File();
 }
}
