package mz.sprites;

import mz.core.Sprite;

@:native("Sprite_Base")
extern class Sprite_Base extends Sprite {


  /**
   * Hides the sprite.
   */
  public function hide():Void;

  /**
   * Shows the sprite.
   */
  public function show():Void;
}