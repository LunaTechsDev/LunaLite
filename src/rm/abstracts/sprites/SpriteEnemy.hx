package rm.abstracts.sprites;

import rm.objects.Game_Enemy;
import rm.sprites.Sprite_Enemy;

@:forward
@:forwardStatics
abstract SpriteEnemy(Sprite_Enemy) from Sprite_Enemy to Sprite_Enemy {
 public inline function new(battler: Game_Enemy) {
  this = new Sprite_Enemy(battler);
 }

 public inline function raw(): Sprite_Enemy {
  return this;
 }
}
