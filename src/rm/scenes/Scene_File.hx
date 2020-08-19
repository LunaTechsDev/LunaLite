package rm.scenes;

import rm.windows.Window_SavefileList;

/**
 *  Super class of Scene_Save and Scene_Load
 */
@:native("Scene_File")
extern class Scene_File extends Scene_MenuBase {
 private var _listWindow: Window_SavefileList;

 /**
  * Returns the current savefileId.
  *
  * @memberof Scene_File
  */
 public function savefileId(): Int;

 public function createHelpWindow(): Void;
 public function createListWindow(): Void;

 /**
  * The current mode of the scene;
  * the modes are 'save' or 'load'.
  * @memberof Scene_File
  */
 public function mode(): Void;

 public function activateListWindow(): Void;
 public function helpWindowText(): String;

 /**
  * Returns the index of the first
  * save file.
  * @returns {number}
  * @memberof Scene_File
  */
 public function firstSavefileIndex(): Int;

 /**
  * Handler for when a
  * save file is selected within the file scene.
  * @memberof Scene_File
  */
 public function onSavefileOk(): Void;
}
