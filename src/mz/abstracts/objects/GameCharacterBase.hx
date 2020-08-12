package mz.abstracts.objects;

import mz.objects.Game_CharacterBase;

@:forward
@:forwardStatics
abstract GameCharacterBase(Game_CharacterBase) from Game_CharacterBase
 to Game_CharacterBase {
 public inline function new() {
  this = new Game_CharacterBase();
 }
}
