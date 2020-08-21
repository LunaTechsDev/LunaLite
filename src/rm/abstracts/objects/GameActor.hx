package rm.abstracts.objects;

import rm.objects.Game_Actor;

@:forward
@:forwardStatics
abstract GameActor(Game_Actor) from Game_Actor to Game_Actor {
 public inline function new(actorId: Int) {
  this = new Game_Actor(actorId);
 }
}
