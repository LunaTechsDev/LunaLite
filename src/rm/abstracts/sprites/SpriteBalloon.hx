package rm.abstracts.sprites;

import rm.types.LunaTea.BalloonId;
import rm.sprites.Sprite_Balloon;

@:forward
@:forwardStatics
abstract SpriteBalloon(Sprite_Balloon) from Sprite_Balloon to Sprite_Balloon {
 public inline function new() {
  this = new Sprite_Balloon();
 }
}
