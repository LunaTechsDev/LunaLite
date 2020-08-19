package rm.sprites;

import rm.objects.Game_Picture;

/**
 * -----------------------------------------------------------------------------
 * Sprite_Picture
 *
 * The sprite for displaying a picture.
 */
@:native("Sprite_Picture")
extern class Sprite_Picture {
 private var _pictureId: Int;
 private var _pictureName: String;
 private var _isPicture: Bool;
 public function new(pictureId: Int);
 public function picture(): Game_Picture;
 public function updateBitmap(): Void;
 public function updateOrigin(): Void;
 public function updatePosition(): Void;
 public function updateScale(): Void;
 public function updateTone(): Void;
 public function updateOther(): Void;
 public function loadBitmap(): Void;
}
