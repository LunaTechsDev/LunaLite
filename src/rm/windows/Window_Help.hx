package rm.windows;

import rm.types.RPG.BaseItem;

@:native("Window_Help")
extern class Window_Help extends Window_Base {
 /**
  * The text that is displayed within the window.
  *
  * @protected
  * @type {string}
  * @memberof Window_Help
  */
 private var _text: String;

 /**
  * Creates an instance of Window_Help.
  * @param {number} numLines
  * @memberof Window_Help
  */
 public function new(numLines: Int);

 /**
  * Sets the _text property of the window;
  * this text will be displayed within the window.
  * @param {string} text
  * @memberof Window_Help
  */
 public function setText(text: String): Void;

 public function clear(): Void;

 /**
  * Sets the current item of the help window.
  *
  * @param {RPG.BaseItem} item
  * @memberof Window_Help
  */
 public function setItem(item: BaseItem): Void;
}
