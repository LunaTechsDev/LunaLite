package mz.scenes;

import mz.core.Rectangle;
import mz.core.Sprite;

@:native("Scene_Title")
extern class Scene_Title extends Scene_Base {
 /**
  * Creates the title scene background.
  */
 public function createBackground(): Void;

 /**
  * Creates the title screen foreground.
  */
 public function createForeground(): Void;

 /**
  * Draws the game title.
  */
 public function drawGameTitle(): Void;

 /**
  * Scales the background images and centers it.
  */
 public function adjustBackground(): Void;

 /**
  * Creates the command window and sets it's handlers.
  */
 public function createCommandWindow(): Void;

 public function commandWindowRect(): Rectangle;

 public function centerSprite(sprite: Sprite): Void;

 /**
  * Handler for the new game command.
  */
 public function commandNewGame(): Void;

 /**
  * Handler for the continue command.
  */
 public function commandContinue(): Void;

 /**
  * Handler for the options command.
  */
 public function commandOptions(): Void;

 /**
  * Plays the title screen music upon entering the scene.
  */
 public function playTitleMusic(): Void;
}