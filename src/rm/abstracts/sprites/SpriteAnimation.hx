package rm.abstracts.sprites;

import rm.sprites.Sprite_Animation;

@:forward
@:forwardStatics
abstract SpriteAnimation(Sprite_Animation) from Sprite_Animation
 to Sprite_Animation {
 public inline function new() {
  this = new Sprite_Animation();
 }
}
