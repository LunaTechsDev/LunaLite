package rm.windows;

@:expose("Window_MenuCommand")
@:native("Window_MenuCommand")
extern class Window_MenuCommand extends Window_Command {
 public function new(x: Int, y: Int): Void;
 public static function initCommandPosition(): Void;
 public static var _lastCommandSymbol: Any;

 /**
  * Adds the standard game commands to the
  * RPGMakerMV main menu.
  * @memberof Window_MenuCommand
  */
 public function addMainCommands(): Void;

 /**
  * Adds the standard formation command to the
  * RPGMakerMV main menu.
  * @memberof Window_MenuCommand
  */
 public function addFormationCommand(): Void;

 /**
  * Adds any user created commands to the
  * RPGMakerMV main menu.
  * @memberof Window_MenuCommand
  */
 public function addOriginalCommands(): Void;

 /**
  * Adds the save command to the
  * RPGMakerMV main menu.
  * @memberof Window_MenuCommand
  */
 public function addSaveCommand(): Void;

 public function addGameEndCommand(): Void;

 /**
  * Checks if the standard game commands for the menu
  * are needed based on database system options.
  * @param {string} name
  * @returns {boolean}
  * @memberof Window_MenuCommand
  */
 public function needsCommand(name: String): Bool;

 /**
  * Determines if the main commands are enabled;
  * this is based on the settings in the database.
  * @returns {boolean}
  * @memberof Window_MenuCommand
  */
 public function areMainCommandsEnabled(): Bool;

 /**
  * Determines if the option command is enabled;
  * based on the setting in the database.
  * @returns {boolean}
  * @memberof Window_MenuCommand
  */
 public function isOptionsEnabled(): Bool;

 /**
  * Determines if the save command is enabled;
  * based on the setting in the database.
  * @returns {boolean}
  * @memberof Window_MenuCommand
  */
 public function isSaveEnabled(): Bool;

 /**
  * Selects the last command in menu.
  *
  * @memberof Window_MenuCommand
  */
 public function selectLast(): Void;
}
