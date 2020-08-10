package mz.abstracts.sprites;

import mz.sprites.Sprite_Character;

abstract SpriteCharacter(Sprite_Character) {
 public inline function raw(): Sprite_Character {
  return this;
 }
}
