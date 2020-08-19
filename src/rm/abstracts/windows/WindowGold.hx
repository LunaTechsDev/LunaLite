package rm.abstracts.windows;

import rm.windows.Window_Gold;

@:forward
@:forwardStatics
abstract WindowGold(Window_Gold) from Window_Gold to Window_Gold {
 public inline function raw(): Window_Gold {
  return this;
 }
}
