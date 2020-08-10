package mz.abstracts.sprites;

@:forward
@:forwardStatics
abstract SpriteWeapon(Sprite_Weapon) from Sprite_Weapon to Sprite_Weapon {
 public inline function new() {
  this = new Sprite_Weapon();
 }
 public inline raw():Sprite_Weapon {
 return this;
}
}
