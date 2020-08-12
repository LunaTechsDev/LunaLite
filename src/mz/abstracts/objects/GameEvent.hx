package mz.abstracts.objects;

import mz.objects.Game_Enemy;
import mz.objects.Game_Event;

abstract GameEvent(Game_Event) from Game_Enemy to Game_Enemy {
 public inline function new() {
  this = new Game_Event();
 }
}
