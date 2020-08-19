package rm.scenes;

import js.lib.Date;

@:native("Scene_Boot")
extern class Scene_Boot extends Scene_Base {
 private var _startDate: Date;

 /**
  * Loads the system images upon booting the game.
  */
 public function loadSystemImages(): Void;

 /**
  * Loads the system window image for showing all windows in game.
  */
 public function loadSystemWindowImage(): Void;

 /**
  * Returns true if the game font is loaded.
  * @return Bool
  */
 public function isGameFontLoaded(): Bool;

 public function updateDocumentTitle(): Void;

 /**
  * Checks the player location upon booting the game.
  */
 public function checkPlayerLocation(): Void;
}
