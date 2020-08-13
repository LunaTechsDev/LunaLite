package mz.abstracts.objects;

import mz.objects.Game_Timer;

@:forward
@:forwardStatics
abstract GameTimer(Game_Timer) from Game_Timer to Game_Timer {
 public inline function new() {
  this = new Game_Timer();
 }
}
