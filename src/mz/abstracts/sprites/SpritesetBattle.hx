package mz.abstracts.sprites;

import mz.sprites.Spriteset_Battle;

@:forward
@:forwardStatics
abstract SpritesetBattle(Spriteset_Battle) from Spriteset_Battle
 to Spriteset_Battle {
 public inline function new() {
  this = new Spriteset_Battle();
 }
}
