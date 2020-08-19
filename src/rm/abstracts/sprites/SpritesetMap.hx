package rm.abstracts.sprites;

import rm.core.Bitmap;
import rm.sprites.Spriteset_Map;

@:forward
@:forwardStatics
abstract SpritesetMap(Spriteset_Map) from Spriteset_Map to Spriteset_Map {
 public inline function new(?bitmap: Bitmap) {
  this = new Spriteset_Map(bitmap);
 }
}
