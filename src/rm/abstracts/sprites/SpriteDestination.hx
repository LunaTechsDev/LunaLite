package rm.abstracts.sprites;

import rm.core.Bitmap;
import rm.sprites.Sprite_Destination;

@:forward
@:forwardStatics
abstract SpriteDestination(Sprite_Destination) from Sprite_Destination
 to Sprite_Destination {
 public inline function new(?bitmap: Bitmap) {
  this = new Sprite_Destination(bitmap);
 }
}
