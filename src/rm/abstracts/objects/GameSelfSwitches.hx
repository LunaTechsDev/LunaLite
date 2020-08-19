package rm.abstracts.objects;

import rm.objects.Game_SelfSwitches;

@:forward
@:forwardStatics
abstract GameSelfSwitches(Game_SelfSwitches) from Game_SelfSwitches
 to Game_SelfSwitches {
 public inline function new() {
  this = new Game_SelfSwitches();
 }
}
