package rm.abstracts.sprites;

import rm.objects.Game_Character;
import rm.sprites.Sprite_Character;

@:forward
@:forwardStatics
abstract SpriteCharacter(Sprite_Character) from Sprite_Character
 to Sprite_Character {
 public inline function new(character: Game_Character) {
  this = new Sprite_Character(character);
 }

 public inline function raw(): Sprite_Character {
  return this;
 }
}
