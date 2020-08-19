package rm.abstracts.scenes;

import rm.scenes.Scene_Battle;

abstract SceneBattle(Scene_Battle) from Scene_Battle to Scene_Battle {
 public inline function new() {
  this = new Scene_Battle();
 }
}
