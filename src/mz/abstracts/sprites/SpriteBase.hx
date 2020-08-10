package mz.abstracts.sprites;

import mz.sprites.Sprite_Base;

@:forward
@:forwardStatics
abstract SpriteBase(Sprite_Base) {
 public inline function raw(): Sprite_Base {
  return this;
 }
}
