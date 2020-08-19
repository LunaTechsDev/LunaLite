package rm.abstracts.objects;

import rm.objects.Game_Troop;
import rm.objects.Game_Temp;

@:forward
@:forwardStatics
abstract GameTemp(Game_Temp) from Game_Temp to Game_Temp {
 public inline function new() {
  this = new Game_Temp();
 }
}
