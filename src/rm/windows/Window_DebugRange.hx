package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_DebugRange
 *
 * The window for selecting a block of switches/variables on the debug screen.
 * @class Window_DebugRange
 */
@:native("Window_DebugRange")
extern class Window_DebugRange extends Window_Selectable {
 private static var lastTopRow: Int;
 private static var lastIndex: Int;

 private var _editWindow: Window_DebugEdit;

 public function new(x: Int, y: Int);

 public function windowWidth(): Int;
 public function windowHeight(): Int;
 public function mode(): String;
 public function topId(): Int;
 public function setEditWindow(editWindow: Window_DebugEdit): Void;
}
