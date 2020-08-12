package mz.abstracts.objects;

import mz.objects.Game_Vehicle;

@:forward
@:forwardStatics
abstract GameVehicle(Game_Vehicle) from Game_Vehicle to Game_Vehicle {
 public inline function new() {
  this = new Game_Vehicle();
 }
}
