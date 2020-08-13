package mz.abstracts.scenes;

import mz.scenes.Scene_ItemBase;

@:forward
@:forwardStatics
abstract SceneItemBase(Scene_ItemBase) from Scene_ItemBase from Scene_ItemBase {
 public inline function new() {
  this = new Scene_ItemBase();
 }
}
