package mz.abstracts.sprites;

import mz.types.LunaTea.BalloonId;
import mz.sprites.Sprite_Ballon;

@:forward
@:forwardStatics
abstract SpriteBalloon(Sprite_Ballon) from Sprite_Ballon to Sprite_Ballon {
 public inline function new() {
  this = new Sprite_Ballon();
 }
}
