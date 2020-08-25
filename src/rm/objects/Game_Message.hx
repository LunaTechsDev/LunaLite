package rm.objects;

import rm.types.LunaTea.ChoicePositionType;
import rm.types.LunaTea.ChocieBackgroundType;
import rm.types.LunaTea.ChoiceCancelType;
import rm.types.LunaTea.ChoiceDefaultType;
import rm.types.LunaTea.MessagePositionType;
import rm.types.LunaTea.MessageBackgroundType;

@:expose("Game_Message")
@:native("Game_Message")
extern class Game_Message {
 @:native("_texts")
 public var __texts: Array<String>;
 private var _texts: Array<String>;
 @:native("_choices")
 public var __choices: Array<String>;
 private var _choices: Array<String>;
 @:native("_faceName")
 public var __faceName: String; // TODO: add validation here
 private var _faceName: String;
 @:native("_faceIndex")
 public var __faceIndex: Int;
 private var _faceIndex: Int;
 @:native("_background")
 public var __background: MessageBackgroundType;
 private var _background: MessageBackgroundType;
 @:native("_positionType")
 public var __positionType: MessagePositionType;
 private var _positionType: MessagePositionType;
 @:native("_choiceDefaultType")
 public var __choiceDefaultType: ChoiceDefaultType;
 private var _choiceDefaultType: ChoiceDefaultType;
 @:native("_choiceCancelType")
 public var __choiceCancelType: ChoiceCancelType;
 private var _choiceCancelType: ChoiceCancelType;
 @:native("_choiceBackground")
 public var __choiceBackground: ChocieBackgroundType;
 private var _choiceBackground: ChocieBackgroundType;
 @:native("_choicePositionType")
 public var __choicePositionType: ChoicePositionType;
 private var _choicePostionType: ChoicePositionType;
 @:native("_numInputVariableId")
 public var __numInputVariableId: Int;
 private var _numInputVariableId: Int;
 @:native("_numInputMaxDigits")
 public var __numInputMaxDigits: Int;
 private var _numInputMaxDigits: Int;
 @:native("_itemChoiceVariableId")
 public var __itemChoiceVariableId: Int;
 private var _itemChoiceVariableId: Int;
 @:native("_itemChoiceItypeId")
 public var __itemChoiceItypeId: Int;
 private var _itemChoiceItypeId: Int;
 @:native("_scrollMode")
 public var __scrollMode: Bool;
 private var _scrollMode: Bool;
 @:native("_scrollSpeed")
 public var __scrollSpeed: Int;
 private var _scrollSpeed: Int;
 @:native("_scrollNoFast")
 public var __scrollNoFast: Bool;
 private var _scrollNoFast: Bool;
 @:native("_choiceCallback")
 public var __choiceCallback: (n: Int) -> Void;
 private var _choiceCallback: (n: Int) -> Void;

 public function new(): Void;
 public function initialize(): Void;
 public function clear(): Void;
 public function choices(): Array<String>;

 /**
  * Returns the name of the face image used for the message.
  *
  * @returns {String}
  * @memberof Game_Message
  */
 public function faceName(): String;

 /**
  * Returns the face index within the face image to display the
  * correct face.
  * @returns {number}
  * @memberof Game_Message
  */
 public function faceIndex(): Int;

 /**
  * Returns the background associated with the message;
  * this is the background
  * @returns {number}
  * @memberof Game_Message
  */
 public function background(): Int;

 /**
  * Returns the current position type of the message window.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function positionType(): Int;

 public function choiceDefaultType(): Int;
 public function choiceCancelType(): Int;

 /**
  * Returns the background type of the choice window.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function choiceBackground(): Int;

 /**
  * Returns the position of the choice window.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function choicePositionType(): Int;

 /**
  * Returns the number input variable id.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function numInputVariableId(): Int;

 /**
  * Returns the number input maximum digits.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function numInputMaxDigits(): Int;

 /**
  * Returns the item choice variable id.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function itemChoiceVariableId(): Int;

 /**
  * Returns the item choice item type id.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function itemChoiceItypeId(): Int;

 /**
  * Returns true if the scroll mode is set to true.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function scrollMode(): Bool;

 /**
  * Returns the scroll speed.
  *
  * @returns {number}
  * @memberof Game_Message
  */
 public function scrollSpeed(): Int;

 /**
  * Returns true if the scroll is set to not being fast.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function scrollNoFast(): Bool;

 /**
  * Adds text to the game message object.
  *
  * @param {String} text
  * @memberof Game_Message
  */
 public function add(text: String): Void;

 public function setFaceImage(faceName: String, faceIndex: Int): Void;

 /**
  * Sets the background of the message window;
  * options are 0 (fully opaque), 1 (transparent), 2 (invisible background).
  * The default is 0.
  * @param {number} background
  * @memberof Game_Message
  */
 public function setBackground(background: Int): Void;

 /**
  * Sets the position of the message window;
  * default is 2.
  * @param {number} positionType
  * @memberof Game_Message
  */
 public function setPositionType(positionType: Int): Void;

 /**
  * Sets the choices within the choice window;
  * sets the default and cancel choices for the window.
  * @param {Array<String>} choices
  * @param {number} defaultType
  * @param {number} cancelType
  * @memberof Game_Message
  */
 public function setChoices(choices: Array<String>, defaultType: Int,
  cancelType: Int): Void;

 public function setChoiceBackground(background: Int): Void;

 /**
  * Sets the position of the choice window associated with the
  * message window.
  * @param {number} positionType
  * @memberof Game_Message
  */
 public function setChoicePositionType(positionType: Int): Void;

 /**
  * Sets the number input and associates it with a variable id;
  * the max number of digits can also be set.
  * @param {number} variableId
  * @param {number} maxDigits
  * @memberof Game_Message
  */
 public function setNumberInput(variableId: Int, maxDigits: Int): Void;

 /**
  * Sets the choice and associates it with a variable id;
  * sets the itemtype id associated with the choice.
  * @param {number} variableId
  * @param {number} itemType
  * @memberof Game_Message
  */
 public function setItemChoice(variableId: Int, itemType: Int): Void;

 /**
  * Sets the scroll speed of the message window;
  * disable fast movement if noFast is set to true.
  * @param {number} speed
  * @param {boolean} noFast
  * @memberof Game_Message
  */
 public function setScroll(speed: Int, noFast: Bool): Void;

 /**
  * Sets a callback to be associated with a specific choice;
  * a callback is a JavaScript function that will be run when the
  * choice is selected.
  * @param {((n: number) => Void)} callback
  * @memberof Game_Message
  */
 public function setChoiceCallback(callback: ((n: Int) -> Void)): Void;

 public function onChoice(n: Int): Void;

 /**
  * Returns true if the game message object has text.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function hasText(): Bool;

 /**
  * Returns true if the game message object has a set of choices.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isChoice(): Bool;

 /**
  * Returns true if the game message object has a number input attached.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isNumberInput(): Bool;

 /**
  * Returns true if the game message object has an item choice attached.
  *
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isItemChoice(): Bool;

 /**
  * Returns true if the game message object has text, choices, number input,
  * or item choice.
  * @returns {boolean}
  * @memberof Game_Message
  */
 public function isBusy(): Bool;

 /**
  * Creates a new page for the text within the message window.
  *
  * @memberof Game_Message
  */
 public function newPage(): Void;

 /**
  * Returns all of the text contained within the message.
  *
  * @returns {String}
  * @memberof Game_Message
  */
 public function allText(): String;
}
