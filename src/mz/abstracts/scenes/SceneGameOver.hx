package mz.abstracts.scenes;

import mv.scenes.Scene_GameOver;

abstract SceneGameOver(Scene_GameOver) from Scene_GameOver to Scene_GameOver {
 public inline function new() {
  this = new Scene_GameOver();
 }
}
