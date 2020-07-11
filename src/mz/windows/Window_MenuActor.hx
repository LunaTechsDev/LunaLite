package mz.windows;

import mz.types.RPG.BaseItem;

@:native("Window_MenuActor")
extern class Window_MenuActor extends Window_MenuStatus {
  public function new();

  public function selectForItem(item:BaseItem):Void;
}