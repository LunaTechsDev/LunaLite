package rm.objects;

/**
 * The game object class for game variables.
 */
@:native("Game_Variables")
extern class Game_Variables {
 private var _data: Array<Int>;

 public function new(): Void;

 public function initialize(): Void;

 public function clear(): Void;
 public function value(variableId: Int): Int;
 public function setValue(variableId: Int, value: Int): Void;
 public function onChange(): Void;
}
