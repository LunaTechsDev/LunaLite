package rm.windows;

import rm.core.Rectangle;

typedef Info = {key: String};

@:native("Window_SavefileList")
extern class Window_SavefileList extends Window_Selectable {
 private var _mode: String;

 /**
  * Whether ornot the auto save feature is enabled
  *
  * @default {Bool} false
  * @memberof Window_SavefileList
  */
 @native("_autosave")
 public var __autosave: Bool;

 /**
  * Whether ornot the auto save feature is enabled
  *
  * @default {Bool} false
  * @memberof Window_SavefileList
  */
 private var _autosave: Bool;

 public function new(x: Int, y: Int, width: Int, height: Int);

 /**
  * Sets the mode of the save file window.
  *
  * @param {string} mode
  * @memberof Window_SavefileList
  */
 public function setMode(mode: String): Void;

 /**
  * Returns the maximum number of visible items.
  *
  * @returns {number}
  * @memberof Window_SavefileList
  */
 public function maxVisibleItems(): Int;

 public function itemHeight(): Float;

 /**
  * Draws the file id at the specified x and y coordinates.
  *
  * @param {number} id
  * @param {number} x
  * @param {number} y
  * @memberof Window_SavefileList
  */
 public function drawFileId(id: Int, x: Int, y: Int): Void;

 public function drawContents(info: Info, rect: Rectangle, valid: Bool): Void;
 public function drawGameTitle(info: Info, x: Int, y: Int, width: Int): Void;
 public function drawPartyCharacters(info: Info, x: Int, y: Int): Void;

 /**
  * Draws the current playtime at the specified x and y coordinates within the given
  * width.
  * @param {{key: string}} info
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_SavefileList
  */
 public function drawPlaytime(info: Info, x: Int, y: Int, width: Int): Void;
}
