package mz.abstracts.scenes;

import mz.scenes.Scene_Battle;

abstract SceneBattle(Scene_Battle) from Scene_Battle to Scene_Battle {
 public inline function new() {
  this = new Scene_Battle();
 }
}
