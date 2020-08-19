package rm.scenes;

import rm.windows.Window_Gold;
import rm.windows.Window_MenuCommand;
import rm.windows.Window_MenuStatus;

/**
 * The menu scene in your RPGMakerMV game.
 */
@:native("Scene_Menu")
extern class Scene_Menu extends Scene_MenuBase {
 private var _commandWindow: Window_MenuCommand;
 private var _goldWindow: Window_Gold;
 private var _statusWindow: Window_MenuStatus;

 /**
  * Creates the main menu window on the
  * menu scene; contains the commands for
  * menu usage.
  * @memberof Scene_Menu
  */
 public function createCommandWindow(): Void;

 /**
  * Creates the gold window on the menu scene.
  *
  * @memberof Scene_Menu
  */
 public function createGoldWindow(): Void;

 /**
  * Creates the status window on the menu scene.
  *
  * @memberof Scene_Menu
  */
 public function createStatusWindow(): Void;

 /**
  * Handler for what to do when the 'item'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public function commandItem(): Void;

 public function commandPersonal(): Void;
 public function commandFormation(): Void;

 /**
  * Handler for what to do when the 'option'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public function commandOptions(): Void;

 /**
  * Handler for what to do when the 'save'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public function commandSave(): Void;

 /**
  * Handler for what to do when the 'game end'
  * command is clicked.
  * @memberof Scene_Menu
  */
 public function commandGameEnd(): Void;

 public function onPersonalOk(): Void;
 public function onPersonalCancel(): Void;
 public function onFormationOk(): Void;
 public function onFormationCancel(): Void;
}
