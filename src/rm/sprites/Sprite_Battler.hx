package rm.sprites;

import rm.objects.Game_Battler;

@:expose("Sprite_Battler")
@:native("Sprite_Battler")
extern class Sprite_Battler extends Sprite_Base {
 private var _battler: Game_Battler;
 private var _homeX: Int;
 private var _homeY: Int;
 private var _offsetX: Int;
 private var _offsetY: Int;
 private var _targetOffsetX: Int;
 private var _targetOffsetY: Int;
 private var _movementDuration: Int;
 private var _selectionEffectCount: Int;

 public function initMembers(): Void;

 public function setHome(x: Int, y: Int): Void;

 /**
  * Updates the main loop of the sprite battler.
  */
 public function updateMain(): Void;

 /**
  * Updates the bitmap of the sprite battler.
  */
 public function updateBitmap(): Void;

 /**
  * Updates movement on the sprite battler.
  */
 public function updateMove(): Void;

 /**
  * Updates the position of the sprite battler.
  */
 public function updatePosition(): Void;

 /**
  * Updates the sprite battler animation.
  */
 public function updateAnimation(): Void;
}
