package nodes.windows;

import rm.core.Rectangle;
import rm.windows.Window_Selectable;

@:native("LTWindowSelectable")
class LTWindowSelectable extends Window_Selectable {
 public function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  super(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  super(rect);
  #end
 }
}
