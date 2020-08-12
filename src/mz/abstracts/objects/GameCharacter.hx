package mz.abstracts.objects;

import mz.objects.Game_Character;

@:forward
@:forwardStatics
abstract GameCharacter(Game_Character) from Game_Character to Game_Character {
 public inline function new() {
  this = new Game_Character();
 }
}
