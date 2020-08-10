package mz.abstracts.sprites;

import mz.sprites.Sprite_Button;

@:forward
@:forwardStatics
abstract SpriteButton(Sprite_Button) {
 public inline function raw(): Sprite_Button {
  return this;
 }
}
