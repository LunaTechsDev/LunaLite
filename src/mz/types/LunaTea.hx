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
 public inline var EXCLAMATION = 0;
 public inline var QUESTION = 1;
 public inline var MUSIC_NOTE = 2;
 public inline var HEART = 3;
 public inline var ANGER = 4;
 public inline var SWEAT = 5;
 public inline var COBWEB = 6;
 public inline var SILENCE = 7;
 public inline var ZZZ = 8;
 // Extra Balloon IDs would be user defined
}

@:forward
@:forwardStatics
enum abstract AnimationSpeed(Int) from Int to Int {
}
