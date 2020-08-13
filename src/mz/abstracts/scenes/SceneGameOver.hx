package mz.abstracts.scenes;

import mz.scenes.Scene_GameOver;

@:forward
@:forwardStatics
abstract SceneGameOver(Scene_GameOver) from Scene_GameOver to Scene_GameOver {
 public inline function new() {
  this = new Scene_GameOver();
 }
}
