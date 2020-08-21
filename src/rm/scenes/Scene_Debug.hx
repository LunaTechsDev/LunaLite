package rm.scenes;

import rm.core.Rectangle;

/**
 * Scene class of the debug menu screen.
 */
extern class Scene_Debug extends Scene_MenuBase {
 /**
  * Creates the range window.
  *
  * @memberof Scene_Debug
  */
 public function createRangeWindow(): Void;
 
 #if !compileMV
 public function rangeWindowRect(): Rectangle;
 public function editWindowRect(): Rectangle;
 public function debugHelpWindowRect(): Rectangle;
 #end

 /**
  * Creates the edit window.
  *
  * @memberof Scene_Debug
  */
 public function createEditWindow(): Void;

 /**
  * Creates the debug help .window.
  *
  * @memberof Scene_Debug
  */
 public function createDebugHelpWindow(): Void;

 public function onRangeOk(): Void;
 public function onEditCancel(): Void;
 public function refreshHelpWindow(): Void;

 /**
  * Returns the help text within the
  * debug scene.
  * @returns {String}
  * @memberof Scene_Debug
  */
 public function helpText(): String;
}
