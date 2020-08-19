package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_MenuStatus
 *
 * The window for displaying party member status on the menu screen.
 * @class Window_MenuStatus
 * @extends {Window_Selectable}
 */
@:native("Window_MenuStatus")
extern class Window_MenuStatus extends Window_Selectable {
 private var _formationMode: Bool;
 private var _pendingIndex: Int;

 /**
  * Creates an instance of Window_MenuStatus.
  * @param {number} x
  * @param {number} y
  * @memberof Window_MenuStatus
  */
 public function new(x: Int, y: Int);

 /**
  * Window width.
  * @return Int
  */
 public function windowWidth(): Int;

 /**
  * Window height.
  * @return Int
  */
 public function windowHeight(): Int;

 /**
  * Returns the height of each item (actor status) in the main menu
  * window.
  * @returns {number}
  * @memberof Window_MenuStatus
  */
 public function itemHeight(): Int;

 /**
  * Returns the number of visible rows in
  * menu status.
  * @returns {number}
  * @memberof Window_MenuStatus
  */
 public function numVisibleRows(): Int;

 /**
  * Loads the images for the main menu status window.
  *
  * @memberof Window_MenuStatus
  */
 public function loadImages(): Void;

 /**
  * Draws the item background at the given index.
  *
  * @param {number} index
  * @memberof Window_MenuStatus
  */
 public function drawItemBackground(index: Int): Void;

 public function drawItemImage(index: Int): Void;

 public function drawItemStatus(index: Int): Void;

 public function selectLast(): Void;

 /**
  * Determines if the window is in formation mode;
  * if true, the player can select characters to swap
  * positions with.
  * @returns {boolean}
  * @memberof Window_MenuStatus
  */
 public function formationMode(): Bool;

 /**
  * Sets the formation mode to true or false.
  *
  * @param {boolean} formationMode
  * @memberof Window_MenuStatus
  */
 public function setFormationMode(formationMode: Bool): Void;

 public function pendingIndex(): Int;

 public function setPendingIndex(index: Int): Void;
}
