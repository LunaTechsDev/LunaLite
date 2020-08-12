package mz.abstracts.objects;

import mz.objects.Game_Actor;
import mz.objects.Game_Actors;

@:forward
@:forwardStatics
abstract GameActors(Game_Actors) from Game_Actors to Game_Actors {
 public inline function new() {
  this = new Game_Actors();
 }
}
