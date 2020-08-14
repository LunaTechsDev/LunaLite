package mz.abstracts.sprites;

import mz.sprites.Sprite_Damage;

@:forward
@:forwardStatics
abstract SpriteDamage(Sprite_Damage) from Sprite_Damage to Sprite_Damage {
 public inline function new() {
  this = new Sprite_Damage();
 }
}
