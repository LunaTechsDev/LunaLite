package rm.abstracts.sprites;

import rm.sprites.Sprite_Timer;

@:forward
@:forwardStatics
abstract SpriteTimer(Sprite_Timer) from Sprite_Timer to Sprite_Timer {
 public inline function new() {
  this = new Sprite_Timer();
 }
}
