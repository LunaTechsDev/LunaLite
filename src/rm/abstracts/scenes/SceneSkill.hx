package rm.abstracts.scenes;

import rm.scenes.Scene_Skill;

@:forward
@:forwardStatics
abstract SceneSkill(Scene_Skill) from Scene_Skill to Scene_Skill {
 public inline function new() {
  this = new Scene_Skill();
 }
}
