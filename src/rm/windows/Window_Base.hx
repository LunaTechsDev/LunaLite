package rm.windows;

import rm.types.LunaTea.Color;
import rm.core.Rectangle;
import rm.types.RPG.BaseItem;
import rm.objects.Game_Actor;
import rm.types.RM.TextState;
import haxe.extern.EitherType;
import js.lib.Object;
import rm.core._Window;
import utils.Fn;

@:native("Window_Base")
extern class Window_Base extends _Window {
 #if compileMV
 /**
  * The standard icon width;
  * default is 32.
  * @private var
  * @static
  * @type {number}
  * @memberof Window_Base
  */
 private static var _iconWidth: Int; // TODO: Move to the ImageManager class

 /**
  * The standard icon height;
  * default is 32.
  * @private var
  * @static
  * @type {number}
  * @memberof Window_Base
  */
 private static var _iconHeight: Int;

 /**
  * The standard face width;
  * default is 144.
  * @private var
  * @static
  * @type {number}
  * @memberof Window_Base
  */
 private static var _faceWidth: Int;

 /**
  * The standard face height;
  * default is 144.
  * @private var
  * @static
  * @type {number}
  * @memberof Window_Base
  */
 private static var _faceHeight: Int;
 #else
 #end

 /**
  * The opening property; determines if
  * the window is opening.
  * @private var
  * @type {Bool}
  * @memberof Window_Base
  */
 private var _opening: Bool;

 /**
  * The closing property; determines if
  * the window is closing.
  * @private var
  * @type {Bool}
  * @memberof Window_Base
  */
 private var _closing: Bool;

 #if compileMV
 /**
  * Creates an instance of Window_Base.
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {number} height
  * @memberof Window_Base
  */
 public function new(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Initializes the window.
  *
  * @memberof Window_Base
  */
 public function initialize(?x: Int, ?y: Int, ?width: Int, ?height: Int): Void;
 #else
 public function new(rect: Rectangle): Void;
 public function initialize(rect: Rectangle): Void;
 #end

 /**
  * Returns the standard line height of the current window;
  * default is 36.
  * @returns {number}
  * @memberof Window_Base
  */
 public function lineHeight(): Int;

 /**
  * Returns the standard font face of the
  * game based on what language the game is in.
  * @returns {String}
  * @memberof Window_Base
  */
 public function standardFontFace(): String;

 /**
  * Returns the standard font size of the text
  * in window; default is 28.
  * @returns {number}
  * @memberof Window_Base
  */
 public function standardFontSize(): Int;

 /**
  * Returns the standard padding of the window;
  * default is 18.
  * @returns {number}
  * @memberof Window_Base
  */
 public function standardPadding(): Int;

 /**
  * Returns the text padding of the window;
  * default is 6.
  * @returns {number}
  * @memberof Window_Base
  */
 public function textPadding(): Int;

 /**
  * Returns the standard back opacity of the window; this is the
  * opacity of the area behind the window's text content.
  * Default is 192.
  * @returns {number}
  * @memberof Window_Base
  */
 public function standardBackOpacity(): Int;

 /**
  * Loads the window skin from the img/system directory.
  *
  * @memberof Window_Base
  */
 public function loadWindowSkin(): Void;

 /**
  * Updates the window padding based on the
  * standardPadding method.
  * @memberof Window_Base
  */
 public function updatePadding(): Void;

 /**
  * Updates the back opacity of the window
  * based on the standardBackOpacity method.
  * @memberof Window_Base
  */
 public function updateBackOpacity(): Void;

 /**
  * Returns the inner content width of the window.
  *
  * @returns {number}
  * @memberof Window_Base
  */
 public function contentsWidth(): Int;

 /**
  * Returns the inner content height of the window.
  *
  * @returns {number}
  * @memberof Window_Base
  */
 public function contentsHeight(): Int;

 /**
  * Returns the fitting height given a number of lines based on
  * the line height plus standard padding of the window.
  * Default formula: numLines * lineHeight + standardPadding * 2
  *
  * @param {number} numLines
  * @returns {number}
  * @memberof Window_Base
  */
 public function fittingHeight(numLines: Int): Int;

 /**
  * Updates the tone of the window based on the
  * game system window tone defined in the database.
  * @memberof Window_Base
  */
 public function updateTone(): Void;

 /**
  * Creates the contents of the window; this is the area
  * of the window which text is drawn to.
  * @memberof Window_Base
  */
 public function createContents(): Void;

 /**
  * Resets the font settings of the window back to the
  * default.
  * @memberof Window_Base
  */
 public function resetFontSettings(): Void;

 /**
  * Resets the text color of the window back to the
  * default.
  * @memberof Window_Base
  */
 public function resetTextColor(): Void;

 /**
  * The update method of the window; this is
  * run every frame to do logic processing for the window.
  * @memberof Window_Base
  */
 public function update(): Void;

 /**
  * Updates the openness of the window when the
  * _opening property is set to true.
  * Openness is increased.
  * @memberof Window_Base
  */
 public function updateOpen(): Void;

 /**
  * Updates the openness of the window when the
  * _closing property is set to true.
  * Openness is decreased.
  * @memberof Window_Base
  */
 public function updateClose(): Void;

 /**
  * Opens the window.
  *
  * @memberof Window_Base
  */
 public function open(): Void;

 /**
  * Closes the window.
  *
  * @memberof Window_Base
  */
 public function close(): Void;

 /**
  * Returns true if the window is currently opening.
  *
  * @returns {boolean}
  * @memberof Window_Base
  */
 public function isOpening(): Bool;

 /**
  * Returns true if the window is currently closing.
  *
  * @returns {boolean}
  * @memberof Window_Base
  */
 public function isClosing(): Bool;

 /**
  * Shows the window, making it visible.
  *
  * @memberof Window_Base
  */
 public function show(): Void;

 /**
  * Hides the window, making it invisible;
  * the window is not closed when hidden.
  *
  * @memberof Window_Base
  */
 public function hide(): Void;

 /**
  * Activates the window, allowing it to be processed
  * and to update.
  * @memberof Window_Base
  */
 public function activate(): Void;

 /**
  * Deactives the window, preventing further processing.
  *
  * @memberof Window_Base
  */
 public function deactivate(): Void;

 /**
  * Returns a text color given a numbered index
  * as a css color String; this index maps
  * directly to the img/system/window.png colors
  * by default.
  * @param {number} n
  * @returns {*}
  * @memberof Window_Base
  */
 public function textColor(n: Int): String;

 /**
  * Returns the normal color as a css
  * color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function normalColor(): String;

 /**
  * Returns the system color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function systemColor(): String;

 /**
  * Returns the crisis color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function crisisColor(): String;

 /**
  * Returns the death color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function deathColor(): String;

 /**
  * Returns the gauage back color as
  * a css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function gaugeBackColor(): String;

 /**
  * Returns the hp gauge color 1
  * as a css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function hpGaugeColor1(): String;

 /**
  * Returns the hp gauge color 2
  * as a css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function hpGaugeColor2(): String;

 /**
  * Returns the mp gauge color 1
  * as a css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function mpGaugeColor1(): String;

 /**
  * Returns the mp gauge color 2
  * as a css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function mpGaugeColor2(): String;

 /**
  * Returns the mp cost color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function mpCostColor(): String;

 /**
  * Returns the power up color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function powerUpColor(): String;

 /**
  * Returns the power down color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function powerDownColor(): String;

 /**
  * Returns the tp gauge color 1 as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function tpGaugeColor1(): String;

 /**
  * Returns tp gauge color 2 as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function tpGaugeColor2(): String;

 /**
  * Returns the tp cost color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function tpCostColor(): String;

 /**
  * Returns the pending color as a
  * css color String.
  * @returns {String}
  * @memberof Window_Base
  */
 public function pendingColor(): String;

 /**
  * Returns the translucentOpacity for the window;
  * The default is 160.
  *
  * @returns {number}
  * @memberof Window_Base
  */
 public function translucentOpacity(): Float;

 /**
  * Changes the text color property given a css color String.
  *
  * @param {String} color
  * @memberof Window_Base
  */
 public function changeTextColor(color: String): Void;

 /**
  * Changes the paintOpacity (the opacity of the text drawn to the window);
  * if true the opacity is set to 255, otherwise the opacity is set to 160.
  * @param {boolean} enabled
  * @memberof Window_Base
  */
 public function changePaintOpacity(enabled: Bool): Void;

 /**
  * Given text or a number, draws the content to the window's contents
  * layer at the specified x and y coordinate within the max width.
  * The text content can also be aligned with the align property.
  * The possible alignments are: "left", "center", "right".
  * @param {(String | number)} text
  * @param {number} x
  * @param {number} y
  * @param {number} maxWidth
  * @param {String} align
  * @memberof Window_Base
  */
 public function drawText(text: EitherType<String, Int>, x: Int, y: Int,
  maxWidth: Int, align: String): Void;

 /**
  * Calculates the width of a text String and
  * returns a number.
  * @param {String} text
  * @returns {number}
  * @memberof Window_Base
  */
 public function textWidth(text: String): Int;

 #if compileMV
 /**
  * Draws text with text codes included; this will draw
  * icons, increase text height, and more.
  * @param text
  * @param x
  * @param y
  * @param width
  * @returns Int
  * @memberof Window_Base
  */
 public function drawTextEx(text: String, x: Int, y: Int): Int;
 #else

 /**
  * Draws text with text codes included; this will draw
  * icons, increase text height, and more.
  * @param text
  * @param x
  * @param y
  * @param width
  * @returns Int
  * @memberof Window_Base
  */
 public function drawTextEx(text: String, x: Int, y: Int, width: Float): Int;

 /**
  * Returns the text Size of drawTextEx.
  * @param text
  * @returns {width:Int, height:Int}
  */
 public function textSizeEx(text: String): {width: Int, height: Int};

 /**
  * Processes all the text in the window, then
  * flushes the text state.
  * @param textState
  */
 public function processAllText(textState: TextState): Void;

 /**
  * Flushes the text state.
  * @param textState
  */
 public function flushTextState(textState: TextState): Void;

 /**
  * Create a text buffer and determines whether
  * to use right to left embedding (U+202B).
  * @param rtl
  * @return String
  */
 public function createTextBuffer(rtl: Bool): String;

 public function processControlCharacter(extState: TextState,
  character: String): Void;
 #end

 /**
  * Converts the escape characters and returns the text content
  * after processing the characters.
  * @param {String} text
  * @returns {String}
  * @memberof Window_Base
  */
 public function convertEscapeCharacters(text: String): String;

 /**
  * Returns the actor name given an index;
  * the index starts from 1.
  * @param {number} actorIndex
  * @returns {String}
  * @memberof Window_Base
  */
 public function actorName(actorIndex: Int): String;

 /**
  * Returns a party member name given an index;
  * the index starts from 1.
  * @param {number} partyMemberIndex
  * @returns {String}
  * @memberof Window_Base
  */
 public function partyMemberName(partyMemberIndex: Int): String;

 /**
  * Process each character in the text when drawTextEx
  * is used to draw text.
  * @param {MV.TextState} textState
  * @memberof Window_Base
  */
 public function processCharacter(textState: TextState): Void;

 /**
  * Processes the normal characters in the text
  * when drawTextEx is used to draw text.
  * Normal characters are letters and numbers.
  * @param {MV.TextState} textState
  * @memberof Window_Base
  */
 public function processNormalCharacter(textState: TextState): Void;

 /**
  * Processes new line when drawTextEx is used to draw text.
  *
  * @param {MV.TextState} textState
  * @memberof Window_Base
  */
 public function processNewLine(textState: TextState): Void;

 /**
  * Processes new page when drawTexttEx is used to draw text.
  *
  * @param {MV.TextState} textState
  * @memberof Window_Base
  */
 public function processNewPage(textState: TextState): Void;

 public function obtainEscapeCode(textState: TextState): String;

 /**
  * Obtains the escape parameters from text codes in the text state
  * when drawTextEx is used to draw text.
  * @param {MV.TextState} textState
  * @returns {(number | String)}
  * @memberof Window_Base
  */
 public function obtainEscapeParam(textState: EitherType<String,
  TextState>): EitherType<Float, String>;

 /**
  * Processes escape characters when drawTextEx is used
  * for drawing text.
  * @param {String} code
  * @param {MV.TextState} textState
  * @memberof Window_Base
  */
 public function processEscapeCharacter(code: String,
  textState: TextState): Void;

 /**
  * Processes drawing an icon when drawTextEx is used for
  * drawing text.
  * @param {number} iconIndex
  * @param {MV.TextState} textState
  * @memberof Window_Base
  */
 public function processDrawIcon(iconIndex: Int, textState: TextState): Void;

 /**
  * Makes the font bigger by a value of 12.
  *
  * @memberof Window_Base
  */
 public function makeFontBigger(): Void;

 /**
  * Makes the font smaller by a value of 12.
  *
  * @memberof Window_Base
  */
 public function makeFontSmaller(): Void;

 /**
  * Calculates the text height of the textState (when using drawTextEx);
  * if all is set to true, all lines of text are calculated, otherwise
  * only a single line is processed.
  * @param {rm.TextState} textState
  * @param {Bool} all
  * @returns Int
  * @memberof Window_Base
  */
 public function calcTextHeight(textState: TextState, all: Bool): Int;

 /**
  * Draws an icon given the specified iconIndex at the specified
  * x and y coordinates. The Width and Height of the icon is based on the
  * _iconWidth and _iconHeight properties.
  * @param {number} iconIndex
  * @param {number} x
  * @param {number} y
  * @memberof Window_Base
  */
 public function drawIcon(iconIndex: Int, x: Int, y: Int): Void;

 public function drawFace(faceName: String, faceIndex: Int, x: Int, y: Int,
  width: Int, height: Int): Void;

 /**
  * Draws a character (map sprites) at the specified x and y coordinate.
  * CharacterName refers to character spritesheet, and characterIndex refers
  * to the characterIndex on the spritesheet.
  * @param {String} characterName
  * @param {number} characterIndex
  * @param {number} x
  * @param {number} y
  * @memberof Window_Base
  */
 public function drawCharacter(characterName: String, characterIndex: Int,
  x: Int, y: Int): Void;

 /**
  * Draws a gauge at the specified x and y coordinates within the given width.
  * Color1 and Color2 represent the gradient as css color Strings of the gauge.
  *
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {number} rate
  * @param {String} color1
  * @param {String} color2
  * @memberof Window_Base
  */
 public function drawGauge(x: Int, y: Int, width: Int, rate: Float,
  color1: String, color2: String): Void;

 /**
  * Returns the hp color as a css String.
  *
  * @param {Game_Actor} actor
  * @returns {String}
  * @memberof Window_Base
  */
 public function hpColor(actor: Game_Actor): String;

 /**
  * Returns the mp color as a css color String.
  *
  * @param {Game_Actor} actor
  * @returns {String}
  * @memberof Window_Base
  */
 public function mpColor(actor: Game_Actor): String;

 /**
  * Returns the tp color as a css color String.
  *
  * @param {Game_Actor} actor
  * @returns {String}
  * @memberof Window_Base
  */
 public function tpColor(actor: Game_Actor): String;

 public function drawActorCharacter(actor: Game_Actor, x: Int, y: Int): Void;

 /**
  * Draws the actor face at the specified x and y coordinates within
  * the given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {number} height
  * @memberof Window_Base
  */
 public function drawActorFace(actor: Game_Actor, x: Int, y: Int, width: Int,
  height: Int): Void;

 /**
  * Draws the actor name at the specified x and y coordinates within
  * the given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorName(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the actor class at the specified x and y coordinates
  * within the given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorClass(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the actor nickname at the specified x and y coordinates
  * within the given width.
  * @param {Game_Actor} actor
  * @param {Int} x
  * @param {Int} y
  * @param {Int} width
  * @memberof Window_Base
  */
 public function drawActorNickname(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the actor level at the specified x and y coordinates.
  *
  * @param {Game_Actor} actor
  * @param {Int} x
  * @param {Int} y
  * @memberof Window_Base
  */
 public function drawActorLevel(actor: Game_Actor, x: Int, y: Int): Void;

 /**
  * Draws the actor icons at the specified x and y coordinates
  * within the given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorIcons(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the current and max number at the specified x and y coordinate
  * within the given width. Color1 represents the current number and color2
  * represents the max number when the text is drawn.
  * @param {number} current
  * @param {number} max
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @param {String} color1
  * @param {String} color2
  * @memberof Window_Base
  */
 public function drawCurrentAndMax(current: Float, max: Float, x: Int, y: Int,
  width: Int, color1: String, color2: String): Void;

 /**
  * Draws the actor hp at the specified x and y coordinates within
  * the given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorHp(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the actor mp at the specified x and y coordinates within
  * the given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorMp(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the actor tp at the specified x and y coordinates within the
  * given width.
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorTp(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws a simple status for the game actor passed into the method at the
  * specified x and y coordinates within the given width.
  *
  * @param {Game_Actor} actor
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawActorSimpleStatus(actor: Game_Actor, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the item name at the specified x and y coordinates within
  * the given width.
  * @param {RPG.BaseItem} item
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawItemName(item: BaseItem, x: Int, y: Int,
  width: Int): Void;

 /**
  * Draws the currency value given at the specified x and y coordinates within
  * the width given. Useful if you want to write your own custom currency value.
  * @param {number} value
  * @param {String} unit
  * @param {number} x
  * @param {number} y
  * @param {number} width
  * @memberof Window_Base
  */
 public function drawCurrencyValue(value: Int, unit: String, x: Int, y: Int,
  width: Int): Void;

 /**
  * Changes the text color based on the powerUpColor, powerDownColor
  * and normal color. powerUpColor is any number greater than 0, powerDownColor
  * is any color less than 0, otherwise normal color is returned.
  * @param {number} change
  * @memberof Window_Base
  */
 public function paramchangeTextColor(change: Int): Color;

 /**
  * Sets the background type of the window.
  * 0 is 255 window opacity (standard).
  * 1 is the window with background dimmer.
  * Any other number changes the opacity
  * to 0.
  * @param {number} type
  * @memberof Window_Base
  */
 public function setBackgroundType(type: Int): Void;

 /**
  * Shows the background dimmer sprite.
  *
  * @memberof Window_Base
  */
 public function showBackgroundDimmer(): Void;

 /**
  * Hides the background dimmer sprite.
  *
  * @memberof Window_Base
  */
 public function hideBackgroundDimmer(): Void;

 /**
  * Updates the background dimmer sprite opacity based on the openness
  * of the window.
  * @memberof Window_Base
  */
 public function updateBackgroundDimmer(): Void;

 /**
  * Refreshes the bitmap attached to the dimmer sprite
  * based on the window dimensions.
  * @memberof Window_Base
  */
 public function refreshDimmerBitmap(): Void;

 /**
  * Color 1 of the dimmer sprite bitmap.
  * for the gradient.
  * @returns {String}
  * @memberof Window_Base
  */
 public function dimColor1(): String;

 /**
  * Color 2 of the dimmer sprite bitmap
  * for the gradient.
  * @returns {String}
  * @memberof Window_Base
  */
 public function dimColor2(): String;

 /**
  * Returns the x coordinate of the mouse to
  * a local window x coordinate.
  * @param {number} x
  * @returns {number}
  * @memberof Window_Base
  */
 public function canvasToLocalX(x: Float): Float;

 /**
  * Returns the y coordinate of the mouse
  * to a local window y coordinate.
  * @param {number} y
  * @returns {number}
  * @memberof Window_Base
  */
 public function canvasToLocalY(y: Float): Float;

 /**
  * Reverses the face images of the
  * game party members.
  * @memberof Window_Base
  */
 public function reserveFaceImages(): Void;

 #if !compileMV
 /**
  * Checks if object passed in is a rectangle..
  * Error is usually thrown when an MV plugin is used.
  * @param rect
  */
 public function checkRectObject(rect: Rectangle): Void;

 /**
  * Returns a new rectangle used for base text.
  * Width and height are based off the innerWidth
  * and innerHeight properties.
  * @return Rectangle
  */
 public function baseTextRect(): Rectangle;

 public function changeOutlineColor(color: String): Void;

 /**
  * Draws a rectangle using the outline color and
  * main text color of the window.
  * @param x
  * @param y
  * @param width
  * @param height
  */
 public function drawRect(x: Int, y: Int, width: Int, height: Int): Void;

 /**
  * Destroys the window contents.
  * Also destroys the window back contents.
  */
 public function destroyContents(): Void;

 /**
  * Plays a sound effect when okay is processed.
  *

  */
 public function playOkSound(): Void;

 /**
  * Plays the buzzer sound effect when input is
  * incorrect.

  */
 public function playBuzzerSound(): Void;

 /**
  * Plays the cursor sound from SoundManager;
  */
 public function playCursorSound(): Void;

 /**
  * Changes the color based on the color index.
  * @param colorIndex
  */
 public function processColorChange(colorIndex: Int): Void;

 /**
  * Returns the maximum font size for a single line in rm.
  * @param line
  * @return Int
  *
  */
 public function maxFontSizeInLine(line: String): Int;
 #end
}
