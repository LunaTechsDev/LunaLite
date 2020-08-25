package rm.windows;

/**
 * -----------------------------------------------------------------------------
 * Window_DebugEdit
 *
 * The window for displaying switches and variables on the debug screen.
 * @class Window_DebugEdit
 */
@:expose("Window_DebugEdit")
@:native("Window_DebugEdit")
extern class Window_DebugEdit extends Window_Selectable {
 private var _mode: String;
 private var _topId: Int;

 public function new(x: Int, y: Int, width: Int);

 public function itemName(dataId: Int): String;
 public function itemStatus(dataId: String): String;
 public function setMode(mode: String): Void;
 public function setTopId(id: Int): Void;
 public function currentId(): Int;
 public function updateSwitch(): Void;
 public function updateVariable(): Void;
}
