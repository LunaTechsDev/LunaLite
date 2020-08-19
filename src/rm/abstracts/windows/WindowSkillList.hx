package rm.abstracts.windows;

import rm.core.Rectangle;
import rm.windows.Window_SkillList;

@:forward
@:forwardStatics
abstract WindowSkillList(Window_SkillList) from Window_SkillList
 to Window_SkillList {
 public inline function new(x: Int, y: Int, width: Int, height: Int) {
  #if compileMV
  this = new Window_SkillList(x, y, width, height);
  #else
  var rect = new Rectangle(x, y, width, height);
  this = new Window_SkillList(rect);
  #end
 }
}
