package rm.abstracts.sprites;

import rm.objects.Game_Actor;
import rm.sprites.Sprite_Actor;

@:forward
@:forwardStatics
abstract SpriteActor(Sprite_Actor) from Sprite_Actor to Sprite_Actor {
 public inline function new(?battler: Game_Actor) {
  this = new Sprite_Actor(battler);
 }

 public inline function raw(): Sprite_Actor {
  return this;
 }
}
