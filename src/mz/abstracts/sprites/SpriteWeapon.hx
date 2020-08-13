package mz.abstracts.sprites;

import mz.sprites.Sprite_Weapon;

@:forward
@:forwardStatics
abstract SpriteWeapon(Sprite_Weapon) from Sprite_Weapon to Sprite_Weapon {
 public inline function new() {
  this = new Sprite_Weapon();
 }

 public inline function raw(): Sprite_Weapon {
  return this;
 }
}
