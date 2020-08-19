package rm.abstracts.objects;

import rm.objects.Game_Actor;
import rm.objects.Game_Actors;

@:forward
@:forwardStatics
abstract GameActors(Game_Actors) from Game_Actors to Game_Actors {
 public inline function new() {
  this = new Game_Actors();
 }
}
