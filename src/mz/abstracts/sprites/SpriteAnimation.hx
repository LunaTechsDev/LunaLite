package mz.abstracts.sprites;

import mz.sprites.Sprite_Animation;

@:forward
@:forwardStatics
abstract SpriteAnimation(Sprite_Animation) from Sprite_Animation
 to Sprite_Animation {
 public inline function new() {
  this = new Sprite_Animation();
 }
}
