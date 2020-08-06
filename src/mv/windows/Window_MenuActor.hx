package mv.windows;

import mv.types.RPG.BaseItem;

@:native("Window_MenuActor")
extern class Window_MenuActor extends Window_MenuStatus {
 public function new();

 public function selectForItem(item: BaseItem): Void;
}
