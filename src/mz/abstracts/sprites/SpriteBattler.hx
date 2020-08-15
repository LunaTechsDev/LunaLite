package mz.abstracts.sprites;

import mz.sprites.Sprite_Battler;

@:forward
@:forwardStatics
abstract SpriteBattler(Sprite_Battler) from Sprite_Battler to Sprite_Battler {
 public inline function new() {
  this = new Sprite_Battler();
 }

 public inline function raw(): Sprite_Battler {
  return this;
 }
}
