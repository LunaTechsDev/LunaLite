package rm.scenes;

/**
 * Save game screen scene for RPGMakerMV.
 */
@:expose("Scene_Save")
@:native("Scene_Save")
extern class Scene_Save extends Scene_File {
 /**
  * Returns the mode of the
  * save scene.
  * @returns {string}
  * @memberof Scene_Save
  */
 public function mode(): String;

 public function helpWindowText(): String;

 #if !compileMV
 public function executeSave(saveFileId: Int): Void;
 #end

 /**
  * Returns the index of the first
  * save file within the save scene.
  * @returns {number}
  * @memberof Scene_Save
  */
 public function firstSavefileIndex(): Int;

 /**
  * Handler for when a save file
  * is confirmed within the save scene.
  * @memberof Scene_Save
  */
 public function onSavefileOk(): Void;

 /**
  * Handler for when save is a success.
  *
  * @memberof Scene_Save
  */
 public function onSaveSuccess(): Void;

 /**
  * Handler for when save fails.
  *
  * @memberof Scene_Save
  */
 public function onSaveFailure(): Void;
}
