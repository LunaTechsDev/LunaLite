package rm.abstracts.scenes;

import rm.scenes.Scene_ItemBase;

@:forward
@:forwardStatics
abstract SceneItemBase(Scene_ItemBase) from Scene_ItemBase from Scene_ItemBase {
 public inline function new() {
  this = new Scene_ItemBase();
 }
}
