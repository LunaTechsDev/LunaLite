


interface AttackMotion {
  /**
   * The type of the motion.
   */
  type: number;

  /**
   * The ID of the weapon image.
   */
  weaponImageId: number;
}

interface Terms {
  /**
   * The basic status. A string array with the following subscripts:
   *
   * 0: Level
   * 1: Level (short)
   * 2: HP
   * 3: HP (short)
   * 4: MP
   * 5: MP (short)
   * 6: TP
   * 7: TP (short)
   * 8: EXP
   * 9: EXP (short)
   */
  basic: Array<string>;

  /**
   * Parameters. A string array with the following subscripts:
   *
   * 0: Maximum hit points
   * 1: Maximum magic points
   * 2: Attack power
   * 3: Defense power
   * 4: Magic attack power
   * 5: Magic defense power
   * 6: Agility
   * 7: Luck
   * 8: Hit
   * 9: Evasion
   */
  params: Array<string>;

  /**
   * 0: Fight
   * 1: Escape
   * 2: Attack
   * 3: Defend
   * 4: Item
   * 5: Skill
   * 6: Equip
   * 7: Status
   * 8: Sort
   * 9: Save
   * 10: Exit Game
   * 11: Option
   * 12: Weapon
   * 13: Armor
   * 14: Key Item
   * 15: Change Equipment
   * 16: Ultimate Equipment
   * 17: Remove All
   * 18: New Game
   * 19: Continue
   * 20: (not used)
   * 21: Go to Title
   * 22: Cancel
   * 23: (not used)
   * 24: Buy
   * 25: Sell
   */
  commands: Array<string>;

  /**
   * The messages.
   */
  messages: {[key: string]: string};
}

interface TestBattler {
  /**
   * The actor ID.
   */
  actorId: number;

  /**
   * The actor's level.
   */
  level: number;

  /**
   * The actor's equipment. An array of weapon IDs or armor IDs with the following subscripts:
   *
   * 0: Weapon
   * 1: Shield
   * 2: Head
   * 3: Body
   * 4: Accessory
   */
  equips: Array<number>;
}

 type MapInfo = {
    /**
     * The map name.
     */
    name: string;
   
    /**
     * The parent map ID.
     */
     parentId: number;
   
    /**
     * The map tree display order, which is used internally.
     */
     order: number;
   }

    interface MetaData {
    /**
     * The text of the note.
     */
    note: string;

    /**
     * The Meta.
     */
    meta: {[key: string]: any};
}

/**
 * The data class for maps.
 */
 interface Map extends MetaData {
    /**
     * The map's display name.
     */
    displayName: string;

    /**
     * The map's tile set.
     */
    tilesetId: number;

    /**
     * The map's width.
     */
    width: number;

    /**
     * The map's height.
     */
    height: number;

    /**
     * The scroll type (0: No Loop, 1: Vertical Loop, 2: Horizontal Loop, 3: Both Loop).
     */
    scrollType: number;

    /**
     * The truth value indicating whether the battle background specification is enabled.
     */
    specifyBattleback: boolean;

    /**
     * The file name of the floor graphic if the battle background specification is enabled.
     */
    battleback1Name: string;

    /**
     * The file name of the wall graphic if the battle background specification is enabled.
     */
    battleback2_name: string;

    /**
     * The truth value indicating whether BGM autoswitching is enabled.
     */
    autoplayBgm: boolean;

    /**
     * The name of that BGM (RPG.AudioFile) if BGM autoswitching is enabled.
     */
    bgm: rm.types.AudioFile;

    /**
     * The truth value indicating whether BGS autoswitching is enabled.
     */
    autoplayBgs: boolean;

    /**
     * The name of that BGS (RPG.AudioFile) if BGS autoswitching is enabled.
     */
    bgs: rm.types.AudioFile;

    /**
     * The truth value of the [Disable Dashing] option.
     */
    disableDashing: boolean;

    /**
     * An encounter list. A RPG.Map.Encounter ID array.
     */
    encounterList: Array<rm.types.MapEncounter>;

    /**
     * The average number of steps between encounters.
     */
    encounterStep: number;

    /**
     * The file name of the parallax background's graphic.
     */
    parallaxName: string;

    /**
     * The truth value of the [Loop Horizontal] option for the parallax background.
     */
    parallaxLoopX: boolean;

    /**
     * The truth value of the [Loop Vertical] option for the parallax background.
     */
    parallaxLoopY: boolean;

    /**
     * The automatic x-axis scrolling speed for the parallax background.
     */
    parallaxSx: number;

    /**
     * The automatic y-axis scrolling speed for the parallax background.
     */
    parallaxSy: number;

    /**
     * The truth value of the [Show in the Editor] option for the parallax background.
     */
    parallaxShow: boolean;

    /**
     * The map data. A 3-dimensional tile ID array (Table).
     */
    data: Array<number>;

    /**
     * The array of RPG.Event data.
     */
    events: Array<Event>;
}

interface System {
  /**
   * The game title.
   */
  gameTitle: string;

  /**
   * A random number used for update checks. The number changes every time data is saved in RPG Maker.
   */
  versionId: number;

  /**
   * The locale string such as "ja_JP" and "en_US".
   */
  locale: string;

  /**
   * The initial party. An array of actor IDs.
   */
  partyMembers: Array<number>;

  /**
   * The unit of currency.
   */
  currencyUnit: string;

  /**
   * The window color.
   */
  windowTone: Array<number>;

  /**
   * The array of System.AttackMotion data.
   */
  attackMotions: Array<rm.types.Motion>;

  /**
   * A list of elements. A string array using element IDs as subscripts, with the element in the 0 position being nil.
   */
  elements: Array<string>;

  /**
   * he equipment type. A string array with the following subscripts:
   * 1: Weapon
   * 2: Shield
   * 3: Head
   * 4: Body
   * 5: Accessory
   */
  equipTypes: Array<string>;

  /**
   * A list of skill types. A string array using skill type IDs as subscripts, with the element in the 0 position being nil.
   */
  skillTypes: Array<string>;

  /**
   * A list of weapon types. A string array using weapon type IDs as subscripts, with the element in the 0 position being nil.
   */
  weaponTypes: Array<string>;

  /**
   * A list of armor types. A string array using armor type IDs as subscripts, with the element in the 0 position being nil.
   */
  armorTypes: Array<string>;

  /**
   * A switch name list. A string array using switch IDs as subscripts, with the element in the 0 position being nil.
   */
  switches: Array<string>;

  /**
   * A variable name list. A string array using variable IDs as subscripts, with the element in the 0 position being nil.
   */
  variables: Array<string>;

  /**
   * Boat settings (RPG.System.Vehicle).
   */
  boat: rm.types.SystemVehicle;

  /**
   * Ship settings (RPG.System.Vehicle).
   */
  ship: rm.types.SystemVehicle;

  /**
   * Airship settings (RPG.System.Vehicle).
   */
  airship: rm.types.SystemVehicle;

  /**
   * The file name of the title (background) graphic.
   */
  title1Name: string;

  /**
   * The file name of the title (frame) graphic.
   */
  title2Name: string;

  /**
   * The truth value of the [Draw Game Title] option.
   */
  optDrawTitle: boolean;

  /**
   * The truth value of the [Start Transparent] option.
   */
  optTransparent: boolean;

  /**
   * The truth value of the [Show Player Followers] option.
   */
  optFollowers: boolean;

  /**
   * The truth value of the [K.O. by Slip Damage] option.
   */
  optSlipDeath: boolean;

  /**
   * The truth value of the [K.O. by Floor Damage] option.
   */
  optFloorDeath: boolean;

  /**
   * The truth value of the [Display TP in Battle] option.
   */
  optDisplayTp: boolean;

  /**
   * The truth value of the [Reserve Members' EXP] option.
   */
  optExtraExp: boolean;

  /**
   * The truth value of the [use side-view battle] option.
   */
  optSideView: boolean;

  /**
   * The title BGM (RPG.AudioFile).
   */
  titleBgm: rm.types.AudioFile;

  /**
   * The battle BGM (RPG.AudioFile).
   */
  battleBgm: rm.types.AudioFile;

  /**
   * The battle end ME (RPG.AudioFile).
   */
  battleEndMe: rm.types.AudioFile;

  /**
   * The gameover ME (RPG.AudioFile).
   */
  gameoverMe: rm.types.AudioFile;

  /**
   * Sound effects. An RPG.SE array.
   */
  sounds: Array<rm.types.AudioFile>;

  /**
   * The map ID of the player's initial position.
   */
  startMapId: number;

  /**
   * The map's x-coordinate of the player's initial position.
   */
  startX: number;

  /**
   * The map's y-coordinate of the player's initial position.
   */
  startY: number;

  /**
   * Terms (RPG.System.Terms).
   */
  terms: Terms;

  /**
   * Party settings for battle tests. An RPG.System.TestBattler array.
   */
  testBattlers: Array<TestBattler>;

  /**
   * The enemy troop ID for battle tests.
   */
  testTroopId: number;

  /**
   * The file name of the battle background (floor) graphic for use in editing enemy troops and battle tests.
   */
  battleback1Name: string;

  /**
   * The file name of the battle background (wall) graphic for use in editing enemy troops and battle tests.
   */
  battleback2Name: string;

  /**
   * The battler graphic file name for use in editing animations.
   */
  battlerName: string;

  /**
   * The adjustment value for the battler graphic's hue (0..360) for use in editing animations.
   */
  battlerHue: number;

  /**
   * The ID of the map currently being edited. For internal use.
   */
  editMapId: number;
}

   

/** @global RPGMaker Plugin's Object */
declare var $plugins: Array<rm.types.PluginSettings>;
/** @global RPGMakerMV Actor data. */
declare var $dataActors: Array<rm.types.Actor>;
/** @global RPGMakerMV Class data. */
declare var $dataClasses: Array<rm.types.RPGClass>;
/** @global RPGMakerMV Skill data. */
declare var $dataSkills: Array<rm.types.Skill>;
/** @global RPGMakerMV Item data. */
declare var $dataItems: Array<rm.types.Item>;
/** @global RPGMakerMV Weapon data. */
declare var $dataWeapons: Array<rm.types.Weapon>;
/** @global RPGMakerMV Armor data. */
declare var $dataArmors: Array<rm.types.Armor>;
/** @global RPGMakerMV Enemy data. */
declare var $dataEnemies: Array<rm.types.Enemy>;
/** @global RPGMakerMV Troop data. */
declare var $dataTroops: Array<rm.types.Troop>;
/** @global RPGMakerMV State data. */
declare var $dataStates: Array<rm.types.State>;
/** @global RPGMakerMV Animation data. */
declare var $dataAnimations: Array<rm.types.Animation>;
/** @global RPGMakerMV Tileset data. */
declare var $dataTilesets: Array<rm.types.Tileset>;
/** @global RPGMakerMV CommonEvent data. */
declare var $dataCommonEvents: Array<rm.types.CommonEvent>;
/** @global RPGMakerMV System data. */
declare var $dataSystem: System;
/** @global RPGMakerMV MapInfo data. */
declare var $dataMapInfos: Array<MapInfo>;
/** @global RPGMakerMV Map data for the current map. */
declare var $dataMap: Map;
/** @global RPGMakerMV Temporary game data; not saved with the game. */
declare var $gameTemp: Game_Temp;
/** @global RPGMakerMV Game System data; saved with the game.
 * @type {Game_Temp}
*/
declare var $gameSystem: Game_System;
/** @global RPGMakerMV Game Screen; contains properties and methods
 * for adjusting the game screen.
 * @type {Game_Screen}
 */
declare var $gameScreen: Game_Screen;
declare var $gameTimer: Game_Timer;
/** @global RPGMakerMV Game Message; contains properties and methods
 * for displaying messages in the game message window. 
 * @type {Game_Message}
*/
declare var $gameMessage: Game_Message;
/** @global RPGMakerMV Game Switches; contains properties and methods
 * for modifying in game switches while the game is running.
 * These are boolean values: true or false.
 * @type {Game_Switches}
 */
declare var $gameSwitches: Game_Switches;
/** @global RPGMakerMV Game Variables; contains properties and methods
 * for modifying the values of game variables.
 * The variables can contain anything.
 * @type {Game_Variables}
 */
declare var $gameVariables: Game_Variables;
declare var $gameSelfSwitches: Game_SelfSwitches;
declare var $gameActors: Game_Actors;
/** @global RPGmakerMV Game Party; contains properties and methods
 * for interacting with the game party. Some of the methods include
 * number of party members, etc.
 * @type {Game_Party}
 */
declare var $gameParty: Game_Party;
/** @global RPGMakerMV Game Troop; contains properties and methods
 * for interacting with the game troops. Some of the methods include
 * enemy data, enemy names, etc.
 * @type {Game_Troop}
 */
declare var $gameTroop: Game_Troop;
/** @global RPGMakerMV Game Map; contains properties and methods
 * for interacting with the game map. Some of these methods include
 * interacting with the map's game_interpreter, and event information.
 * @type {Game_Map}
 */
declare var $gameMap: Game_Map;
/** @global RPGMakerMV Game Player; contains properties and methods
 * for interacting with the game player. Some of these methods
 * include interacting with the player's position and move route.
 * @type {Game_Player}
 */
declare var $gamePlayer: Game_Player;
declare var $testEvent: Array<rm.types.EventCommand>;