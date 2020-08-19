package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_NameInput
 *
 * The window for selecting text characters on the name input screen.
 * @class Window_NameInputt
 */
@:native("Window_NameInput")
extern class Window_NameInput extends Window_Selectable {
 public static var LATIN1: Array<String>;
 public static var LATIN2: Array<String>;
 public static var RUSSIA: Array<String>;
 public static var JAPAN1: Array<String>;
 public static var JAPAN2: Array<String>;
 public static var JAPAN3: Array<String>;

 private var _editWindow: Window_NameEdit;
 private var _page: Int;

 public function new(editWindow: Window_NameEdit);

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_NameInput
  */
 public function windowHeight(): Int;

 /**
  * Returns the table of characters to input.
  *
  * @returns {Array<Array<String>>}
  * @memberof Window_NameInput
  */
 public function table(): Array<Array<String>>;

 public function character(): String;
 public function isPageChange(): Bool;
 public function isOk(): Bool;
 public function processJump(): Void;
 public function processBack(): Void;
 public function onNameAdd(): Void;
 public function onNameOk(): Void;
}
