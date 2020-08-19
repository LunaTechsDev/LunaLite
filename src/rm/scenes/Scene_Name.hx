package rm.scenes;

/**
 * Scene class of the name input screen.
 */
@:native("Scene_Name")
extern class Scene_Name extends Scene_MenuBase {
 /**
  * Prepares the name input scene for giving the specified
  * actor at actorId a name with a maximum number of characters
  * given by maxLength.
  * @param {number} actorId
  * @param {number} maxLength
  * @memberof Scene_Name
  */
 public function prepare(actorId: Int, maxLength: Int): Void;

 /**
  * Creates the edit window.
  *
  * @memberof Scene_Name
  */
 public function createEditWindow(): Void;

 /**
  * Creates the input window.
  *
  * @memberof Scene_Name
  */
 public function createInputWindow(): Void;

 /**
  * Handler for when ok is processed on the name input scene.
  *
  * @memberof Scene_Name
  */
 public function onInputOk(): Void;
}
