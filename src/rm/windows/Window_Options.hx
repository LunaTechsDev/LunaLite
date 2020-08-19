package rm.windows;

import haxe.extern.EitherType;

@:native("Window_Options")
extern class Window_Options extends Window_Command {
 public function new();

 public function updatePlacement(): Void;
 public function addGeneralOptions(): Void;
 public function addVolumeOptions(): Void;
 public function statusWidth(): Float;
 public function statusText(index: Int): String;
 public function isVolumeSymbol(symbol: String): Bool;
 public function booleanStatusText(value: Bool): String;
 public function volumeStatusText(value: Float): String;
 public function volumeOffset(): Float;
 public function changeValue(symbol: String,
  value: EitherType<Bool, Float>): Void;
 public function getConfigValue(symbol: String): Bool;
 public function setConfigValue(symbol: String,
  volume: EitherType<Bool, Float>): Void;
}
