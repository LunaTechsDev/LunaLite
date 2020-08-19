package rm.abstracts.windows;

import rm.windows.Window_Help;

abstract WindowHelp(Window_Help) from Window_Help to Window_Help {
 public inline function new(numLines: Int) {
  this = new Window_Help(numLines);
 }

 public inline function raw(): Window_Help {
  return this;
 }
}
