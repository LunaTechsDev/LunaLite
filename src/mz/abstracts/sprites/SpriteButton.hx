package mz.abstracts.sprites;

import mz.core.Bitmap;
import mz.sprites.Sprite_Button;

@:forward
@:forwardStatics
abstract SpriteButton(Sprite_Button) {
 public inline function new(?bitmap: Bitmap) {
  this = new Sprite_Button(bitmap);
 }

 public inline function raw(): Sprite_Button {
  return this;
 }
}
