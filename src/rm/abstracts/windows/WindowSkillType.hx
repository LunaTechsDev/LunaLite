package rm.abstracts.windows;

import rm.windows.Window_SkillType;

@:forward
@:forwardStatics
abstract WindowSkillType(Window_SkillType) from Window_SkillType
 to Window_SkillType {
 public inline function new(x: Int, y: Int) {
  this = new Window_SkillType(x, y);
 }
}
