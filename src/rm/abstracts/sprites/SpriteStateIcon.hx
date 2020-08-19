package rm.abstracts.sprites;

import rm.sprites.Sprite_StateIcon;

@:forward
@:forwardStatics
abstract SpriteStateIcon(Sprite_StateIcon) from Sprite_StateIcon
 to Sprite_StateIcon {
 public inline function new() {
  this = new Sprite_StateIcon();
 }
}
