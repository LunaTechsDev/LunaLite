package mz.abstracts.sprites;

import mz.sprites.Sprite_Enemy;

abstract SpriteEnemy(Sprite_Enemy) {
 public inline function raw(): Sprite_Enemy {
  return this;
 }
}
