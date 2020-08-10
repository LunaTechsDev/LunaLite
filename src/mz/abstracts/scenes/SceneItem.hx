package mz.abstracts.scenes;

import mz.scenes.Scene_Item;

abstract SceneItem(Scene_Item) from Scene_Item to Scene_Item {
 public inline function new() {
  this = new Scene_Item();
 }
}
