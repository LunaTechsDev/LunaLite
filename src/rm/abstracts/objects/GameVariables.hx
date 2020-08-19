package rm.abstracts.objects;

import rm.objects.Game_Variables;

@:forward
@:forwardStatics
abstract GameVariables(Game_Variables) from Game_Variables to Game_Variables {
 public inline function new() {
  this = new Game_Variables();
 }
}
