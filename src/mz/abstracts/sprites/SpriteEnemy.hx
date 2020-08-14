package mz.abstracts.sprites;

import mz.objects.Game_Enemy;
import mz.sprites.Sprite_Enemy;

@:forward
@:forwardStatics
abstract SpriteEnemy(Sprite_Enemy) {
 public inline function new(battler: Game_Enemy) {
  this = new Sprite_Enemy(battler);
 }

 public inline function raw(): Sprite_Enemy {
  return this;
 }
}
