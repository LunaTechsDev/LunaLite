package rm.windows;

import rm.types.RPG.BaseItem;

@:expose("Window_MenuActor")
@:native("Window_MenuActor")
extern class Window_MenuActor extends Window_MenuStatus {
 public function new();

 public function initialize(): Void;

 public function selectForItem(item: BaseItem): Void;
}
