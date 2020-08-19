package rm.abstracts.windows;

import rm.windows.Window_SkillList;

@:forward
@:forwardStatics
abstract WindowSkillList(Window_SkillList) from Window_SkillList
 to Window_SkillList {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  this = new Window_SkillList(x, y, width, height);
 }
}
