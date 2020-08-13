package mz.types;

@:forward
@:forwardStatics
enum abstract StateId(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract BuffId(Int) from Int to Int {
}

@:forward
@:forwardStatics
enum abstract BalloonId(Int) from Int to Int {
 public var EXCLAMATION = 0;
 public var QUESTION = 1;
 public var MUSIC_NOTE = 2;
 public var HEART = 3;
 public var ANGER = 4;
 public var SWEAT = 5;
 public var COBWEB = 6;
 public var SILENCE = 7;
 public var ZZZ = 8;
 // Extra Balloon IDs would be user defined
}

@:forward
@:forwardStatics
enum abstract AnimationSpeed(Int) from Int to Int {
}
