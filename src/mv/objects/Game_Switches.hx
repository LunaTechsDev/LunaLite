package mv.objects;

@:native("Game_Switches")
extern class Game_Switches {
 private var _data: Array<Bool>;

 public function clear(): Void;
 public function value(switchId: Int): Bool;
 public function setValue(switchId: Int, value: Bool): Void;
 public function onChange(): Void;
}
