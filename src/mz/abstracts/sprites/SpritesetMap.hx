package mz.abstracts.sprites;

import mz.core.Bitmap;
import mz.sprites.Spriteset_Map;

@:forward
@:forwardStatics
abstract SpritesetMap(Spriteset_Map) from Spriteset_Map to Spriteset_Map {
 public inline function new(?bitmap: Bitmap) {
  this = new Spriteset_Map(bitmap);
 }
}
