package rm.abstracts.objects;

import rm.objects.Game_Enemy;

@:forward
@:forwardStatics
abstract GameEnemy(Game_Enemy) from Game_Enemy to Game_Enemy {
 public inline function new(enemyId: Int, x: Int, y: Int) {
  this = new Game_Enemy(enemyId, x, y);
 }
}
