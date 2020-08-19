package rm.windows;

import rm.core.Rectangle;

/**
 * -----------------------------------------------------------------------------
 * Window_ScrollText
 *
 * The window for displaying scrolling text. No frame is displayed, but it
 * is handled as a window for convenience.
 * @class Window_ScrollText
 */
extern class Window_ScrollText extends Window_Base {
 private var _text: String;
 private var _allTextHeight: Int;

 #if compileMV
 public function new();
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 /**
  * Starts the displaying of a message in the scroll text window.
  *
  * @memberof Window_ScrollText
  */
 public function startMessage(): Void;

 public function refresh(): Void;
 public function updateMessage(): Void;
 public function scrollSpeed(): Int;

 /**
  * Returns true if the scene is in fast forward mode.
  *
  * @returns {boolean}
  * @memberof Window_ScrollText
  */
 public function isFastForward(): Bool;

 /**
  * Returns the fast forward rate of the scroll text window.
  *
  * @returns {number}
  * @memberof Window_ScrollText
  */
 public function fastForwardRate(): Float;

 /**
  * Terminates the message and the scroll text window is hidden.
  *
  * @memberof Window_ScrollText
  */
 public function terminateMessage(): Void;
}
