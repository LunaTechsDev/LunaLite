package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_ScrollText;

@:forward
@:forwardStatics
abstract WindowScrollText(Window_ScrollText) from Window_ScrollText
 to Window_ScrollText {
 public inline function new(?x: Int, ?y: Int, ?width: Int, ?height: Int) {
  #if compileMV
  this = new Window_ScrollText();
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_ScrollText(rect);
  #end
 }
}
