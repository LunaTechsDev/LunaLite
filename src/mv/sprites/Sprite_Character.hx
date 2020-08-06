package mv.sprites;

import mv.core.Sprite;

@:native("Sprite_Character")
extern class Sprite_Character extends Sprite_Base {
 private var _upperBody: Sprite;
 private var _lowerBody: Sprite;
 private var _bushDepth: Int;

 public function initMembers(): Void;
}
