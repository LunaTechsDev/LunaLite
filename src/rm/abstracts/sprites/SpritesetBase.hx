package rm.abstracts.sprites;

import rm.sprites.Spriteset_Base;

@:forward
@:forwardStatics
abstract SpritesetBase(Spriteset_Base) from Spriteset_Base to Spriteset_Base {
 public inline function new() {
  this = new Spriteset_Base();
 }
}
