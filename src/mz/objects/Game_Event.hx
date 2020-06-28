package mz.objects;


/**
 * THe game object class for an event. It contains functionality
 * for event page switching and running parallel process events.
 */
@:native("Game_Event")
extern class Game_Event extends Game_Character {

  private var _mapId:Int;
  private var _eventId:Int;
  private var _moveType:Int; //Cast this  to an abstract enum
  private var _trigger:Int;
  private var _starting:Bool;
  private var _erased:Bool;
  private var _pageIndex:Int;
  private var _originalPattern:Int;
  private var _originalDirection:Int;
  private var _prelockDirection:Int;
  private var _locked:Bool;

  public function new(mapId:Int, eventId:Int);

  public function initMembers():Void;
  /**
   * Returns the event id of the game event
   * @return Int
   */
  public function eventId():Int;
  /**
   * Locks the game event.
   */
  public function lock():Void;
  /**
   * Unlocks the game event.
   */
  public function unlock():Void;
  public function updateStop():Void;
}