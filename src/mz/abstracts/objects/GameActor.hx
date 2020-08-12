package mz.abstracts.objects;

import mz.objects.Game_Actor;

abstract GameActor(Game_Actor) from Game_Actor to Game_Actor {
 public inline function new(actorId: Int) {
  this = new Game_Actor(actorId);
 }
}
