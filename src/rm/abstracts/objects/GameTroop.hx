package rm.abstracts.objects;

import rm.objects.Game_Troop;

@:forward
@:forwardStatics
abstract GameTroop(Game_Troop) from Game_Troop to Game_Troop {
 public inline function new() {
  this = new Game_Troop();
 }
}
