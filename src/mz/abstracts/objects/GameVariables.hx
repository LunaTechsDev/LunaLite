package mz.abstracts.objects;

import mz.objects.Game_Variables;

@:forward
@:forwardStatics
abstract GameVariables(Game_Variables) from Game_Variables to Game_Variables {
 public inline function new() {
  this = new Game_Variables();
 }
}
