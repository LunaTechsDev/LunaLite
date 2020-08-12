package mz.abstracts.objects;

import mz.objects.Game_Troop;
import mz.objects.Game_Temp;

@:forward
@:forwardStatics
abstract GameTemp(Game_Temp) from Game_Temp to Game_Temp {
 public inline function new() {
  this = new Game_Temp();
 }
}
