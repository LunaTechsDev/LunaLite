package rm.abstracts.scenes;

import rm.scenes.Scene_Boot;

@:forward
@:forwardStatics
abstract SceneBoot(Scene_Boot) from Scene_Boot to Scene_Boot {
 public inline function new() {
  this = new Scene_Boot();
 }
}
