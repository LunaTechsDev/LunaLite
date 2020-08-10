package mz.abstracts.scenes;

import mz.scenes.Scene_File;

@:forward
@:forwardStatics
abstract SceneFile(Scene_File) from Scene_File to Scene_File {
 public inline function new() {
  this = new Scene_File();
 }
}
