package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_MapName
 *
 * The window for displaying the map name on the map screen.
 * @class Window_MapName
 */
@:native("Window_MapName")
extern class Window_MapName extends Window_Base {
 private var _showCount: Int;

 public function new();

 /**
  * Returns the window width.
  *
  * @returns {number}
  * @memberof Window_MapName
  */
 public function windowWidth(): Int;

 /**
  * Returns the window height.
  *
  * @returns {number}
  * @memberof Window_MapName
  */
 public function windowHeight(): Int;

 public function updateFadeIn(): Void;
 public function updateFadeOut(): Void;

 /**
  * Windows the map name window.
  *
  * @memberof Window_MapName
  */
 public function refresh(): Void;

 /**
  * Draws the background of the map name window.
  *
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {number} height
  * @memberof Window_MapName
  */
 public function drawBackground(x: Int, y: Int, width: Int, height: Int): Void;
}
