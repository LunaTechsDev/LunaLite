package rm.windows;

@:native("Window_ItemList")
extern class Window_ItemList extends Window_Selectable {
 private var _category: String;

 public function new(x: Int, y: Int, width: Int, height: Int);

 public function needsNumber(): Bool;

 public function selectLast(): Void;

 public function makeItemList(): Void;

 public function numberWidth(): Int;
}
