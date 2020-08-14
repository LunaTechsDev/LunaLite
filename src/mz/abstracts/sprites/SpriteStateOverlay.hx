package mz.abstracts.sprites;

import mz.sprites.Sprite_StateOverlay;

@:forward
@:forwardStatics
abstract SpriteStateOverlay(Sprite_StateOverlay) from Sprite_StateOverlay
 to Sprite_StateOverlay {
 public inline function new() {
  this = new Sprite_StateOverlay();
 }
}
