package rm.abstracts.windows;

import rm.windows.Window_SkillStatus;

@:forward
@:forwardStatics
abstract WindowSkillStatus(Window_SkillStatus) from Window_SkillStatus
 to Window_SkillStatus {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_SkillStatus(x, y, width, height);
 }
}
