package rm.objects;

/**
 * The game object class for game variables.
 */
@:expose("Game_Variables")
@:native("Game_Variables")
extern class Game_Variables {
 @:native("_data")
 public var __data: Array<Int>;
 private var _data: Array<Int>;

 public function new(): Void;

 public function initialize(): Void;

 public function clear(): Void;
 public function value(variableId: Int): Int;
 public function setValue(variableId: Int, value: Int): Void;
 public function onChange(): Void;
}
