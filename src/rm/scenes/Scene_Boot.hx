package rm.scenes;

import js.lib.Date;

@:expose("Scene_Boot")
@:native("Scene_Boot")
extern class Scene_Boot extends Scene_Base {
 private var _startDate: Date;

 @:native("_databaseLoaded")
 public var __databaseLoaded: Bool;
 private var _databaseLoaded: Bool;

 #if !compileMV
 public function onDatabaseLoaded(): Void;

 public function setEncryptionInfo(): Void;
 public function loadPlayerData(): Void;

 public function loadGameFonts(): Void;

 public function isPlayerDataLoaded(): Void;

 public function startNormalGame(): Void;
 public function resizeScreen(): Void;
 public function adjustBoxSize(): Void;
 public function adjustWindow(): Void;
 #end

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
