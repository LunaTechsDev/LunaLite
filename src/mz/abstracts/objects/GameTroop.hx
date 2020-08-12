package mz.abstracts.objects;

import mz.objects.Game_Troop;

abstract GameTroop(Game_Troop) from Game_Troop to Game_Troop {
 public inline function new() {
  this = new Game_Troop();
 }
}
