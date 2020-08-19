package rm.abstracts.sprites;

import rm.core.Bitmap;
import rm.sprites.Sprite_Button;

@:forward
@:forwardStatics
abstract SpriteButton(Sprite_Button) from Sprite_Button to Sprite_Button {
 public inline function new(?bitmap: Bitmap) {
  this = new Sprite_Button(bitmap);
 }

 public inline function raw(): Sprite_Button {
  return this;
 }
}
