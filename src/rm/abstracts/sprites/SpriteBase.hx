package rm.abstracts.sprites;

import rm.sprites.Sprite_Base;

@:forward
@:forwardStatics
abstract SpriteBase(Sprite_Base) from Sprite_Base to Sprite_Base {
 public inline function new() {
  this = new Sprite_Base();
 }

 public inline function raw(): Sprite_Base {
  return this;
 }
}
