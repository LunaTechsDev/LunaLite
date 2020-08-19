package rm.abstracts.scenes;

import rm.scenes.Scene_Shop;

@:forward
@:forwardStatics
abstract SceneShop(Scene_Shop) from Scene_Shop to Scene_Shop {
 public inline function new() {
  this = new Scene_Shop();
 }
}
