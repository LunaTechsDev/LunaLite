package mz.abstracts.sprites;

import mz.sprites.Sprite_Picture;

@:forward
@:forwardStatics
abstract SpritePicture(Sprite_Picture) from Sprite_Picture to Sprite_Picture {
 public inline function new(pictureId: Int) {
  this = new Sprite_Picture(pictureId);
 }
}
