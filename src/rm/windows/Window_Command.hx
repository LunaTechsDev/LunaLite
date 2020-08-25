package rm.windows;

import rm.core.Rectangle;

@:expose("Window_Command")
@:native("Window_Command")
extern class Window_Command extends Window_Selectable {
 #if compileMV
 /**
  * Creates an instance of Window_Command.
  * @param {number} x
  * @param {number} y
  * @memberof Window_Command
  */
 public function new(x: Int, y: Int): Void;

 public function initialize(x: Int, y: Int): Void;
 #else
 public function new(rect: Rectangle);
 public function initialize(rect: Rectangle): Void;
 #end

 /**
  * Returns the width of the window;
  * default is 240.
  * @returns {number}
  * @memberof Window_Command
  */
 public function windowWidth(): Int;

 /**
  * Returns the height of the window;
  * takes the visible rows and passes it to the fittingHeight method.
  * @returns {number}
  * @memberof Window_Command
  */
 public function windowHeight(): Int;

 /**
  * Returns the number of visible rows within the window.
  *
  * @returns {number}
  * @memberof Window_Command
  */
 public function numVisibleRows(): Int;

 /**
  * Returns the maximum number of items within the window.
  *
  * @returns {number}
  * @memberof Window_Command
  */
 public function maxItems(): Int;

 /**
  * Clears the list of commands from the window;
  * this is useful for refreshing changing commands.
  * @memberof Window_Command
  */
 public function clearCommandList(): Void;

 /**
  * Convenient method for overwriting and adding
  * commands with the addCommand method.
  * @memberof Window_Command
  */
 public function makeCommandList(): Void;

 /**
  * Adds commands to the window list with the specified
  * parameters. The actual command can be found as an object.
  * @param {String} name
  * @param {String} symbol
  * @param {boolean} enabled
  * @param {(any | object)} [ext]
  * @memberof Window_Command
  */
 public function addCommand(name: String, symbol: String, enabled: Bool,
  ?ext: Any): Void;

 /**
  * Returns the command name given an index.
  *
  * @param {number} index
  * @returns {String}
  * @memberof Window_Command
  */
 public function commandName(index: Int): String;

 /**
  * Returns the command symbol given an index.
  *
  * @param {number} index
  * @returns {String}
  * @memberof Window_Command
  */
 public function commandSymbol(index: Int): String;

 /**
  * Determines if the command is enabled;
  * checks the enabled property of the command.
  * @param {number} index
  * @returns {boolean}
  * @memberof Window_Command
  */
 public function isCommandEnabled(index: Int): Bool;

 /**
  * Returns the command object at the current index.
  *
  * @returns {object}
  * @memberof Window_Command
  */
 public function currentData(): Any;

 /**
  * Returns the command symbol at the current index.
  *
  * @returns {String}
  * @memberof Window_Command
  */
 public function currentSymbol(): String;

 /**
  * Returns the ext property of the command at the current index.
  *
  * @returns {(any | object)}
  * @memberof Window_Command
  */
 public function currentExt(): Any;

 /**
  * Finds a command object and returns the index number based
  * on the symbol property.
  * @param {String} symbol
  * @returns {number}
  * @memberof Window_Command
  */
 public function findSymbol(symbol: String): Bool;

 /**
  * Selects a command object based on the symbol property.
  *
  * @param {String} symbol
  * @memberof Window_Command
  */
 public function selectSymbol(symbol: String): Void;

 /**
  * Finds a command object and returns the index number
  * based on the ext property.
  * @param {(any | object)} ext
  * @returns {number}
  * @memberof Window_Command
  */
 public function findExt(ext: Any): Int;

 /**
  * Selects a command object based on the ext property.
  *
  * @param {(any | object)} ext
  * @memberof Window_Command
  */
 public function selectExt(ext: Any): Void;

 /**
  * Returns the text align of the commands;
  * possible values are: 'left', 'center', 'right'.
  * @returns {String}
  * @memberof Window_Command
  */
 public function itemTextAlign(): String;
}
