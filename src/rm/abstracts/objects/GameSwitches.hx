package rm.abstracts.objects;

import rm.objects.Game_Switches;

@:forward
@:forwardStatics
abstract GameSwitches(Game_Switches) from Game_Switches to Game_Switches {
 public inline function new() {
  this = new Game_Switches();
 }
}
