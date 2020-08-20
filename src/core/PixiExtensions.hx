package core;

import pixi.core.display.DisplayObject;

class PixiExtensions {
 /**
  * Sets the pixi object interactable along with
  * setting the button mode to interactable as well.
  * @param bool
  */
 public static function setInteracble(displayObj: DisplayObject, bool: Bool) {
  displayObj.interactive = bool;
  displayObj.buttonMode = bool;
 }
}
