package mz.abstracts.windows;

import mz.windows.Window_ScrollText;

@:forward
@:forwardStatics
abstract WindowScrollText(Window_ScrollText) from Window_ScrollText
 to Window_ScrollText {
 public inline function new() {
  this = new Window_ScrollText();
 }
}
