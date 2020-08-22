package rm.windows;

import rm.core.Rectangle;

#if !compileMV
/**
 * The window for displaying a speaker name above
 * the message window.
 */
@:native("Window_NameBox")
extern class Window_NameBox extends Window_Base {
 /**
  * Sets the current message window.
  * @param messageWindow
  */
 public function setMessageWindow(messageWindow: Window_Message): Void;

 /**
  * Sets the name in the message window box.
  * @param name
  */
 public function setName(name: String): Void;

 /**
  * Clears the name in the message box.
  */
 public function clear(): Void;

 /**
  * Starts the name box window.
  */
 public function start(): Void;

 /**
  * Updates the placement of the name box window.
  */
 public function updatePlacement(): Void;

 /**
  * Updates the name box background
  * to match game message background.
  * ```js
  *  this.setBackgroundType($gameMessage.background());
  * ```
  */
 public function updateBackground(): Void;

 /**
  * Returns the window width based on the text size.
  * @returns Int
  */
 public function windowWidth(): Int;

 /**
  * Returns the window height based on
  * the fitting height.
  * @return Int
  */
 public function windowHeight(): Int;

 /**
  * Refreshes the window and
  * redraws the text.
  * ```js
  * const rect = this.baseTextRect();
    this.contents.clear();
    this.drawTextEx(this._name, rect.x, rect.y, rect.width);
  * ```
  * @return Int
  */
 public function refresh(): Void;
}
#else
class Window_NameBox extends Window_Base {
 public function new() {
  // TODO: Fix and update with proper coordinates
  super(0, 0, 100, 100);
 }

 public function baseTextRect() {
  var rect = new Rectangle(0, 0, 100, 100);
  return rect;
 }
}
#end
