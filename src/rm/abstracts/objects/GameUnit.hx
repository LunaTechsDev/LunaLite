package rm.abstracts.objects;

import rm.objects.Game_Unit;

@:forward
@:forwardStatics
abstract GameUnit(Game_Unit) from Game_Unit to Game_Unit {
 public inline function new() {
  this = new Game_Unit();
 }
}
