package mz.abstracts.sprites;

import mz.sprites.Sprite_Actor;

@:forward
@:forwardStatics
abstract SpriteActor(Sprite_Actor) {
 public inline function new() {
  this = new Sprite_Actor();
 }

 public inline function raw(): Sprite_Actor {
  return this;
 }
}
