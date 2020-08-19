package rm.abstracts.objects;

import rm.objects.Game_Player;

@:forward
@:forwardStatics
abstract GamePlayer(Game_Player) from Game_Player to Game_Player {
 public inline function new() {
  this = new Game_Player();
 }
}
