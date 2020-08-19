package rm.types;

import js.lib.Object;
import haxe.display.Display.Metadata;

// typedef MZDict = {key:String}

typedef MetaData = {
 note: String,
 meta: Object
}

typedef RPGMap = {
 > MetaData,

 /**
  * The map's display name
  */
 var displayName: String;

 /**
  * The map's tile set
  */
 var tilesetId: Int;

 /**
  * The map's width
  */
 var width: Int;

 /**
  * The maps height
  */
 var height: Int;

 /**
  * The scroll type (0: No Loop, 1:Vertical Loop, 2:Horizontal Loop, 3:Both Loop)
  */
 var scrollType: Int;

 /**
  * The truth value indicating whether the battle background
  * specification is enabled.
  */
 var specifyBattleback: Bool;

 /**
  * The file name of the wall graphic if the battle background
  * specification is enabled.
  */
 var battleback1Name: String;

 /**
  * The file name of the wall graphic if the battle background
  * specification is enabled.
  */
 var battleback2_name: String;

 /**
  * The truth value indicating whether BGM autoswitching
  * is enabled.
  */
 var autoplayBgm: Bool;

 /**
  * The name of the BGM {RPG.AudioFile} if BGM autoswitching
  * is enabled.
  */
 var bgm: AudioFile;

 /**
  * The truth value indicating whether BGS autoswitching
  * is enabled.
  */
 var autoplayBgs: Bool;

 /**
  * The truth value of the [Disable Dashing] option.
  */
 var disableDashing: Bool;

 /**
  * An encounter list. A RPG.Map.Encounter ID array.
  */
 var encounterList: Array<MapEncounter>;

 /**
  * The average Int of steps between encounters.
  */
 var encounterStep: Int;

 /**
  * The file name of the parallax background's graphic.
  */
 var parallaxName: String;

 /**
  * The truth value of the [Loop Horizontal] option for the parallax background.
  */
 var parallaxLoopX: Bool;

 /**
  * The truth value of the [Loop Vertical] option for the parallax background.
  */
 var parallaxLoopY: Bool;

 /**
  * The automatic x-axis scrolling speed for the parallax background.
  */
 var parallaxSx: Int;

 /**
  * The automatic y-axis scrolling speed for the parallax background.
  */
 var parallaxSy: Int;

 /**
  * The truth value of the [Show in the Editor] option for the parallax background.
  */
 var parallaxShow: Bool;

 /**
  * The map data. A 3-dimensional tile ID array (Table).
  */
 var data: Array<Int>;

 /**
  * The array of RPG.Event data.
  */
 var events: Array<Event>;
}

/**
 * The data class for audio file.
 */
typedef AudioFile = {
 /**
  * The sound file name.
  */
 var name: String;

 /**
  * The pan.
  */
 var pan: Int;

 /**
  * The sound's pitch (50..150). The default value is 100.
  */
 var pitch: Int;

 /**
  * The sound's volume (0..100). The default values are 100 for BGM and ME and 80 for BGS and SE.
  */
 var volume: Int;
}

typedef MapEncounter = {
 /**
  * The enemy Troop ID.
  */
 var troopId: Int;

 /**
  * Weight/chance  among enemies on the map that you'll
  * meet this enemy.
  */
 var weight: Int;

 /**
  * An array containing Region IDs.
  */
 var regionSet: Array<Int>;
}

/**
 * The data class for map information.
 */
typedef MapInfo = {
 /**
  * The map name.
  */
 var name: String;

 /**
  * The parent map ID.
  */
 var parentId: Int;

 /**
  * The map tree display order, which is used internally.
  */
 var order: Int;
}

/**
 * The data class for map events.
 */
typedef Event = {
 > MetaData,

 /**
  * The event ID.
  */
 var id: Int;

 /**
  * The event name.
  */
 var name: String;

 /**
  * The event's x-coordinate on the map.
  */
 var x: Int;

 /**
  * The event's y-coordinate on the map.
  */
 var y: Int;

 /**
  * The event pages. RPG.EventPage array.
  */
 var pages: Array<EventPage>;
}

/**
 * The data class for the event page.
 */
typedef EventPage = {
 /**
  * The event condition (RPG.EventPage.Condition).
  */
 var conditions: EventPageConditions;

 /**
  * The event graphic (RPG.EventPage.Image) .
  */
 var image: EventPageImage;

 /**
  * The type of movement (0: fixed, 1: random, 2: approach, 3: custom).
  */
 var moveType: Int;

 /**
  * The movement speed (1: x8 slower, 2: x4 slower, 3: x2 slower, 4: normal, 5: x2 faster, 6: x4 faster).
  */
 var moveSpeed: Int;

 /**
  * The movement frequency (1: lowest, 2: lower, 3: normal, 4: higher, 5: highest).
  */
 var moveFrequency: Int;

 /**
  * The movement route (RPG.MoveRoute). Referenced only when the movement type is set to custom.
  */
 var moveRoute: Array<MoveRoute>;

 /**
  * The truth value of the [Walking Animation] option.
  */
 var walkAnime: Bool;

 /**
  * The truth value of the [Stepping Animation] option.
  */
 var stepAnime: Bool;

 /**
  * The truth value of the [Direction Fix] option.
  */
 var directionFix: Bool;

 /**
  * The truth value of the [Through] option.
  */
 var through: Bool;

 /**
  * The priority type (0: below characters, 1: same as characters, 2: above characters).
  */
 var priorityType: Int;

 /**
  * The event trigger (0: action button, 1: player touch, 2: event touch, 3: autorun, 4: parallel).
  */
 var trigger: Int;

 /**
  * A list of event commands. An RPG.EventCommand array.
  */
 var list: Array<EventCommand>;
}

/**
 * The data class for the event page conditions.
 */
typedef EventPageConditions = {
 /**
  * The truth value indicating whether the first [Switch] condition is valid.
  */
 var switch1Valid: Bool;

 /**
  * The truth value indicating whether the second [Switch] condition is valid.
  */
 var switch2Valid: Bool;

 /**
  * The truth value indicating whether the [Variable] condition is valid.
  */
 var variableValid: Bool;

 /**
  * The truth value indicating whether the [Self Switch] condition is valid.
  */
 var selfSwitchValid: Bool;

 /**
  * The truth value indicating whether the [Item] condition is valid.
  */
 var itemValid: Bool;

 /**
  * The truth value indicating whether the [Actor] condition is valid.
  */
 var actorValid: Bool;

 /**
  * The ID of that switch if the first [Switch] condition is valid.
  */
 var switch1Id: Int;

 /**
  * The ID of that switch if the second [Switch] condition is valid.
  */
 var switch2Id: Int;

 /**
  * The ID of that variable if the [Variable] condition is valid.
  */
 var variableId: Int;

 /**
  * The standard value of that variable (x and greater) if the [Variable] condition is valid.
  */
 var variableValue: Int;

 /**
  * The letter of that self switch ("A".."D") if the [Self Switch] condition is valid.
  */
 var selfSwitchCh: String;

 /**
  * The ID of that item if the [Item] condition is valid.
  */
 var itemId: String;

 /**
  * The ID of that actor if the [Actor] condition is valid.
  */
 var actorId: String;
}

/**
 * The data class for the Event page [Graphics].
 */
typedef EventPageImage = {
 /**
  * The tile ID. If the specified graphic is not a tile, this value is 0.
  */
 var tileId: Int;

 /**
  * The file name of the character's graphic.
  */
 var characterName: String;

 /**
  * The index of the character's graphic file (0..7).
  */
 var characterIndex: Int;

 /**
  * The direction in which the character is facing (2: down, 4: left, 6: right, 8: up).
  */
 var direction: Int;

 /**
  * The character's pattern (0..2).
  */
 var pattern: Int;
}

/**
 * The data class for the Event command.
 */
typedef EventCommand = {
 /**
  * The event code.
  */
 var code: Int;

 /**
  * The indent depth. Usually 0. The [Conditional Branch] command, among others, adds 1 with every step deeper.
  */
 var indent: Int;

 /**
  * An array containing the Event command's arguments. The contents vary for each command.
  */
 var parameters: Array<Any>;
}

/**
 * The data class for the Move route.
 */
typedef MoveRoute = {
 /**
  * The truth value of the [Repeat Action] option.
  */
 var repeat: Bool;

 /**
  * The truth value of the [Skip If Cannot Move] option.
  */
 var skippable: Bool;

 /**
  * The truth value of the [Wait for Completion] option.
  */
 var wait: Bool;

 /**
  * Program contents. An RPG.MoveCommand array.
  */
 var list: Array<MoveCommand>;
}

/**
 * The data class for the Move command.
 */
typedef MoveCommand = {
 /**
  * Move command code.
  */
 var code: Int;

 /**
  * An array containing the Move command's arguments. The contents vary for each command.
  */
 var parameters: Array<Any>;
}

/**
 * The data class for damage.
 */
typedef Damage = {
 /**
  * The type of damage.
  *
  * 0: None
  * 1: HP damage
  * 2: MP damage
  * 3: HP recovery
  * 4: MP recovery
  * 5: HP drain
  * 6: MP drain
  */
 var type: Int;

 /**
  * The element ID.
  */
 var elementId: Int;

 /**
  * The formula.
  */
 var formula: String;

 /**
  * The degree of variability.
  */
 var variance: Int;

 /**
  * Critical hit (true/false).
  */
 var critical: Bool;
}

typedef Trait = {
 /**
  * The trait code.
  */
 var code: Int;

 /**
  * The ID of the data (such as elements or states) according to the type of the trait.
  */
 var dataId: Int;

 /**
  * The value set according to the type of the trait.
  */
 var value: Int;

 /**
  * The map tree expansion flag, which is used internally.
  */
 var expanded: Bool;

 /**
  * The x-axis scroll position, which is used internally.
  */
 var scrollX: Int;

 /**
  * The y-axis scroll position, which is used internally.
  */
 var scrollY: Int;
}

/**
 * The data class for use effects.
 */
typedef Effect = {
 /**
  * The use effect code.
  */
 var code: Int;

 /**
  * The ID of data (state, parameter, and so on) according to the type of use effect.
  */
 var dataId: Int;

 /**
  * Value 1 set according to the type of use effect.
  */
 var value1: Int;

 /**
  * Value 2 set according to the type of use effect.
  */
 var value2: Int;
}

/**
 * A superclass of actor, class, skill, item, weapon, armor, enemy, and state.
 *
 * Some items are unnecessary depending on the type of data, but they are included for convenience sake.
 */
typedef BaseItem = {
 > MetaData,

 /**
  * The item ID.
  */
 var id: Int;

 /**
  * The item name.
  */
 var name: String;

 /**
  * The icon number.
  */
 var iconIndex: Int;

 /**
  * The description text.
  */
 var description: String;
}

typedef UsableItem = {
 > BaseItem,

 /**
  * The scope of effects.
  *
  * 0: None
  * 1: One Enemy
  * 2: All Enemies
  * 3: One Random Enemy
  * 4: Two Random Enemies
  * 5: Three Random Enemies
  * 6: Four Random Enemies
  * 7: One Ally
  * 8: All Allies
  * 9: One Ally (Dead)
  * 10: All Allies (Dead)
  * 11: The User
  */
 var scope: Int;

 /**
  * When the item/skill may be used.
  *
  * 0: Always
  * 1: Only in battle
  * 2: Only from the menu
  * 3: Never
  */
 var occasion: Int;

 /**
  * The speed correction.
  */
 var speed: Int;

 /**
  * The success rate.
  */
 var successRate: Float;

 /**
  * The number of repeats.
  */
 var repeats: Int;

 /**
  * The number of TP gained.
  */
 var tpGain: Int;

 /**
  * The type of hit.
  *
  * 0: Certain hit
  * 1: Physical attack
  * 2: Magical attack
  */
 var hitType: Int;

 /**
  * The animation ID.
  */
 var animationId: Int;

 /**
  * Damage (RPG.Damage).
  */
 var damage: Damage;

 /**
  * A list of use effects. An RPG.Effect array.
  */
 var effects: Array<Effect>;
}

/**
 * The data class for skills.
 */
typedef Skill = {
 > UsableItem,

 /**
  * Skill type ID.
  */
 var stypeId: Int;

 /**
  * Number of MP consumed.
  */
 var mpCost: Int;

 /**
  * Number of TP consumed
  */
 var tpCost: Int;

 /**
  * The use message.
  */
 var message1: String;

 /**
  * The use message.
  */
 var message2: String;

 /**
  * Weapon type required.
  */
 var requiredWtypeId1: Int;

 /**
  * Weapon type required.
  */
 var requiredWtypeId2: Int;
}

/**
 * The data class for items.
 */
typedef Item = {
 > UsableItem,

 /**
  * The item type ID.
  *
  * 1: Regular item
  * 2: Key item
  */
 var itypeId: Int;

 /**
  * The item's price.
  */
 var price: Int;

 /**
  * The truth value indicating whether the item disappears when used.
  */
 var consumable: Bool;
}

/**
 * A superclass of weapons and armor.
 */
typedef EquipItem = {
 > BaseItem,

 /**
  * The price of the weapon or armor.
  */
 var price: Int;

 /**
  * The type of weapon or armor.
  *
  * 0: Weapon
  * 1: Shield
  * 2: Head
  * 3: Body
  * 4: Accessory
  */
 var etypeId: Int;

 /**
  * The amount of parameter change. An array of integers using the following IDs as subscripts:
  *
  * 0: Maximum hit points
  * 1: Maximum magic points
  * 2: Attack power
  * 3: Defense power
  * 4: Magic attack power
  * 5: Magic defense power
  * 6: Agility
  * 7: Luck
  */
 var params: Array<Int>;

 /**
  * The array of Trait data.
  */
 var traits: Array<Trait>;
}

/**
 * The data class for weapons.
 */
typedef Weapon = {
 > EquipItem,

 /**
  * The weapon type ID.
  */
 var wtypeId: Int;

 /**
  * The animation ID when using the weapon.
  */
 var animationId: Int;
}

/**
 * The data class for armor.
 */
typedef Armor = {
 > EquipItem,

 /**
  * The armor type ID.
  */
 var atypeId: Int;
}

typedef Troop = {
 /**
  * The troop ID.
  */
 var id: Int;

 /**
  * The troop name.
  */
 var name: String;

 /**
  * The troop members. An RPG.Troop.Member array.
  */
 var members: Array<TroopMember>;

 /**
  * The battle events. An RPG.Troop.Page array.
  */
 var pages: Array<Page>;
}

typedef TroopMember = {
 /**
  * The enemy ID.
  */
 var enemyId: Int;

 /**
  * The troop member's x-coordinate.
  */
 var x: Int;

 /**
  * The troop member's y-coordinate.
  */
 var y: Int;

 /**
  * The truth value of the [Appear Halfway] option.
  */
 var hidden: Bool;
}

/**
 * The data class for battle events (pages).
 */
typedef Page = {
 /**
  * Condition (RPG.Troop.Page.Condition).
  */
 var condition: PageCondition;

 /**
  * Span (0: battle, 1: turn, 2: moment).
  */
 var span: Int;

 /**
  * Program contents. An RPG.EventCommand array.
  */
 var list: Array<EventCommand>;
}

/**
 * The data class of battle event [Conditions].
 */
typedef PageCondition = {
 /**
  * The truth value indicating whether the [At End of Turn] condition is valid.
  */
 var turnEnding: Bool;

 /**
  * The truth value indicating whether the [Turn No.] condition is valid.
  */
 var turnValid: Bool;

 /**
  * The truth value indicating whether the [Enemy] condition is valid.
  */
 var enemyValid: Bool;

 /**
  * The truth value indicating whether the [Actor] condition is valid.
  */
 var actorValid: Bool;

 /**
  * The truth value indicating whether the [Switch] condition is valid.
  */
 var switchValid: Bool;

 /**
  * The a and b values specified in the [Turn No.] condition. To be input in the form A + B * X.
  */
 var turnA: Int;

 /**
  * The a and b values specified in the [Turn No.] condition. To be input in the form A + B * X.
  */
 var turnB: Int;

 /**
  * The troop member index specified in the [Enemy] condition (0..7).
  */
 var enemyIndex: Int;

 /**
  * The HP percentage specified in the [Enemy] condition.
  */
 var enemyHp: Int;

 /**
  * The actor ID specified in the [Actor] condition.
  */
 var actorId: Int;

 /**
  * The HP percentage specified in the [Actor] condition.
  */
 var actorHp: Int;

 /**
  * The switch ID specified in the [Switch] condition.
  */
 var switchId: Int;
}

/**
 * The data class for animation.
 */
typedef Animation = {
 /**
  * The animation ID.
  */
 var id: Int;

 /**
  * The animation name.
  */
 var name: String;

 /**
  * The file name of the first animation's graphic.
  */
 var animation1Name: String;

 /**
  * The adjustment value for the hue of the first animation's graphic (0..360).
  */
 var animation1Hue: String;

 /**
  * The file name of the second animation's graphic.
  */
 var animation2Name: String;

 /**
  * The adjustment value for the hue of the second animation's graphic (0..360).
  */
 var animation2Hue: Int;

 /**
  * The base position (0: head, 1: center, 2: feet, 3: screen).
  */
 var position: Int;

 /**
  * Number of frames.
  */
 var frameMax: Int;

 /**
  * The three-dimensional array containing the frame contents.
  */
 var frames: Array<Array<Array<Int>>>;

 /**
  * Timing for SE and flash effects. An RPG.Animation.Timing array.
  */
 var timings: Array<AnimationTiming>;
}

/**
 * The data class for tile sets.
 */
typedef Tileset = {
 > Metadata,

 /**
  * The ID of the tile set.
  */
 var id: Int;

 /**
  * The name of the tile set.
  */
 var name: String;

 /**
  * The mode of the tile set (0: Field type, 1: Area type, 2: VX compatible type).
  */
 var mode: Int;

 /**
  * The file name of the graphic used as the number index (0-8) tile set.
  *
  * The correspondence between numbers and sets is illustrated in the table below.
  *
  * 0 TileA1
  * 1 TileA2
  * 2 TileA3
  * 3 TileA4
  * 4 TileA5
  * 5 TileB
  * 6 TileC
  * 7 TileD
  * 8 TileE
  */
 var tilesetNames: Array<String>;

 /**
  * The flags table. A 1-dimensional array containing a variety of flags (Table).
  *
  * Uses tile IDs as subscripts. The correspondence of each bit is as shown below:
  *
  * 0x0001: Impassable downward
  * 0x0002: Impassable leftward
  * 0x0004: Impassable rightward
  * 0x0008: Impassable upward
  * 0x0010: Display on normal character
  * 0x0020: Ladder
  * 0x0040: Bush
  * 0x0080: Counter
  * 0x0100: Damage floor
  * 0x0200: Impassable by boat
  * 0x0400: Impassable by ship
  * 0x0800: Airship cannot land
  * 0xF000: Terrain tag
  * This manual does not discuss bit operations, but they are similar to those in C.
  * We recommend an Internet search using keywords such as "hexadecimal bit operations" when necessary.
  */
 var flags: Array<Int>;
}

/**
 * The data class for the timing of an animation's SE and flash effects.
 */
typedef AnimationTiming = {
 /**
  * The frame number. 1 less than the number displayed in RPG Maker.
  */
 var frame: Int;

 /**
  * The sound effect or SE (RPG.AudioFile).
  */
 var se: AudioFile;

 /**
  * The flash area (0: none, 1: target, 2: screen; 3: hide target).
  */
 var flashScope: Int;

 /**
  * The color of the flash (Color).
  */
 var flashColor: Array<Int>;

 /**
  * The duration of the flash.
  */
 var flashDuration: Int;
}

/**
 * The data class for common events.
 */
typedef CommonEvent = {
 /**
  * The event ID.
  */
 var id: Int;

 /**
  * The event name.
  */
 var name: String;

 /**
  * The event trigger (0: none, 1: autorun; 2: parallel).
  */
 var trigger: Int;

 /**
  * The condition switch ID.
  */
 var switchId: Int;

 /**
  * A list of event commands. An RPG.EventCommand array.
  */
 var list: Array<EventCommand>;
}

typedef System = {
 /**
  * The game title.
  */
 var gameTitle: String;

 /**
  * A random number used for update checks. The number changes every time data is saved in RPG Maker.
  */
 var versionId: Int;

 /**
  * The locale string such as "ja_JP" and "en_US".
  */
 var locale: String;

 /**
  * The initial party. An array of actor IDs.
  */
 var partyMembers: Array<Int>;

 /**
  * The unit of currency.
  */
 var currencyUnit: String;

 /**
  * The window color.
  */
 var windowTone: Array<Int>;

 /**
  * The array of System.AttackMotion data.
  */
 var attackMotions: Array<SystemAttackMotion>;

 /**
  * A list of elements. A string array using element IDs as subscripts, with the element in the 0 position being nil.
  */
 var elements: Array<String>;

 /**
  * he equipment type. A string array with the following subscripts:
  * 1: Weapon
  * 2: Shield
  * 3: Head
  * 4: Body
  * 5: Accessory
  */
 var equipTypes: Array<String>;

 /**
  * A list of skill types. A string array using skill type IDs as subscripts, with the element in the 0 position being nil.
  */
 var skillTypes: Array<String>;

 /**
  * A list of weapon types. A string array using weapon type IDs as subscripts, with the element in the 0 position being nil.
  */
 var weaponTypes: Array<String>;

 /**
  * A list of armor types. A string array using armor type IDs as subscripts, with the element in the 0 position being nil.
  */
 var armorTypes: Array<String>;

 /**
  * A switch name list. A string array using switch IDs as subscripts, with the element in the 0 position being nil.
  */
 var switches: Array<String>;

 /**
  * A variable name list. A string array using variable IDs as subscripts, with the element in the 0 position being nil.
  */
 var variables: Array<String>;

 /**
  * Boat settings (RPG.System.Vehicle).
  */
 var boat: SystemVehicle;

 /**
  * Ship settings (RPG.System.Vehicle).
  */
 var ship: SystemVehicle;

 /**
  * Airship settings (RPG.System.Vehicle).
  */
 var airship: SystemVehicle;

 /**
  * The file name of the title (background) graphic.
  */
 var title1Name: String;

 /**
  * The file name of the title (frame) graphic.
  */
 var title2Name: String;

 /**
  * The truth value of the [Draw Game Title] option.
  */
 var optDrawTitle: Bool;

 /**
  * The truth value of the [Start Transparent] option.
  */
 var optTransparent: Bool;

 /**
  * The truth value of the [Show Player Followers] option.
  */
 var optFollowers: Bool;

 /**
  * The truth value of the [K.O. by Slip Damage] option.
  */
 var optSlipDeath: Bool;

 /**
  * The truth value of the [K.O. by Floor Damage] option.
  */
 var optFloorDeath: Bool;

 /**
  * The truth value of the [Display TP in Battle] option.
  */
 var optDisplayTp: Bool;

 /**
  * The truth value of the [Reserve Members' EXP] option.
  */
 var optExtraExp: Bool;

 /**
  * The truth value of the [use side-view battle] option.
  */
 var optSideView: Bool;

 /**
  * The title BGM (RPG.AudioFile).
  */
 var titleBgm: AudioFile;

 /**
  * The battle BGM (RPG.AudioFile).
  */
 var battleBgm: AudioFile;

 /**
  * The battle end ME (RPG.AudioFile).
  */
 var battleEndMe: AudioFile;

 /**
  * The gameover ME (RPG.AudioFile).
  */
 var gameoverMe: AudioFile;

 /**
  * Sound effects. An RPG.SE array.
  */
 var sounds: Array<AudioFile>;

 /**
  * The map ID of the player's initial position.
  */
 var startMapId: Int;

 /**
  * The map's x-coordinate of the player's initial position.
  */
 var startX: Int;

 /**
  * The map's y-coordinate of the player's initial position.
  */
 var startY: Int;

 /**
  * Terms (RPG.System.Terms).
  */
 var terms: SystemTerms;

 /**
  * Party settings for battle tests. An RPG.System.TestBattler array.
  */
 var testBattlers: Array<SystemTestBattler>;

 /**
  * The enemy troop ID for battle tests.
  */
 var testTroopId: Int;

 /**
  * The file name of the battle background (floor) graphic for use in editing enemy troops and battle tests.
  */
 var battleback1Name: String;

 /**
  * The file name of the battle background (wall) graphic for use in editing enemy troops and battle tests.
  */
 var battleback2Name: String;

 /**
  * The battler graphic file name for use in editing animations.
  */
 var battlerName: String;

 /**
  * The adjustment value for the battler graphic's hue (0..360) for use in editing animations.
  */
 var battlerHue: Int;

 /**
  * The ID of the map currently being edited. For internal use.
  */
 var editMapId: Int;
}

/**
 * The data class for vehicles.
 */
typedef SystemVehicle = {
 /**
  * The file name of the vehicle's walking graphic.
  */
 var characterName: String;

 /**
  * The index of the vehicle's walking graphic (0..7).
  */
 var characterIndex: Int;

 /**
  * The vehicle's BGM (RPG.AudioFile).
  */
 var bgm: AudioFile;

 /**
  * The map ID of the vehicle's initial position.
  */
 var startMapId: Int;

 /**
  * The map's x-coordinate of the vehicle's initial position.
  */
 var startX: Int;

 /**
  * The map's y-coordinate of the vehicle's initial position.
  */
 var startY: Int;
}

typedef SystemTerms = {
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
 var basic: Array<String>;

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
 var params: Array<String>;

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
 var commands: Array<String>;

 /**
  * The messages.
  */
 var messages: Object;
}

/**
 * The data class for the actors used in battle tests.
 */
typedef SystemTestBattler = {
 /**
  * The actor ID.
  */
 var actorId: Int;

 /**
  * The actor's level.
  */
 var level: Int;

 /**
  * The actor's equipment. An array of weapon IDs or armor IDs with the following subscripts:
  *
  * 0: Weapon
  * 1: Shield
  * 2: Head
  * 3: Body
  * 4: Accessory
  */
 var equips: Array<Int>;
}

typedef SystemAttackMotion = {
 /**
  * The type of the motion.
  */
 var type: Int;

 /**
  * The ID of the weapon image.
  */
 var weaponImageId: Int;
}

typedef Enemy = {
 > Metadata,

 /**
  * The file name of the enemy's battler graphic.
  */
 var battlerName: String;

 /**
  * The adjustment value for the battler graphic's hue (0..360).
  */
 var battlerHue: Int;

 /**
  * The name of the enemy in the database.
  *
  * @type {string}
  * @memberof Enemy
  */
 var name: String;

 /**
  * The ID of the enemy in the database.
  *
  * @type {number}
  * @memberof Enemy
  */
 var id: Int;

 /**
  * Parameters. An array of integers using the following IDs as subscripts:
  *
  * 0: Maximum hit points
  * 1: Maximum magic points
  * 2: Attack power
  * 3: Defense power
  * 4: Magic attack power
  * 5: Magic defense power
  * 6: Agility
  * 7: Luck
  */
 var params: Array<Int>;

 /**
  * The enemy's experience.
  */
 var exp: Int;

 /**
  * The enemy's gold.
  */
 var gold: Int;

 /**
  * The items the enemy drops. An RPG.Enemy.DropItem array.
  */
 var dropItems: Array<EnemyDropItem>;

 /**
  * The enemy's action pattern. An array of RPG.Enemy.Action.
  */
 var actions: Array<EnemyAction>;
}

typedef EnemyDropItem = {
 /**
  * The type of dropped item.
  *
  * 0: None
  * 1: Item
  * 2: Weapon
  * 3: Armor
  */
 var kind: Int;

 /**
  * The ID of the data depending on the type of dropped item (item, weapon, or armor).
  */
 var dataId: Int;

 /**
  * N of the probability that the item will be dropped, 1/N.
  */
 var denominator: Int;
}

/**
 * The data class for enemy [Actions].
 */
typedef EnemyAction = {
 /**
  * The ID of skills to be employed as actions.
  */
 var skillId: Int;

 /**
  * The type of condition.
  *
  * 0: Always
  * 1: Turn No.
  * 2: HP
  * 3: MP
  * 4: State
  * 5: Party Level
  * 6: Switch
  */
 var conditionType: Int;

 /**
  * The first parameter of the condition.
  */
 var conditionParam1: Int;

 /**
  * The second parameter of the condition.
  */
 var conditionParam2: Int;

 /**
  * The action's priority rating (1..10).
  */
 var rating: Int;
}

/**
 * The data class for state.
 */
typedef State = {
 > Metadata,

 /**
  * The ID.
  */
 var id: Int;

 /**
  * The name.
  */
 var name: String;

 /**
  * Action restrictions.
  *
  * 0: None
  * 1: Attack enemy
  * 2: Attack enemy or ally
  * 3: Attack ally
  * 4: Cannot act
  */
 var restriction: Int;

 /**
  * The state priority (0..100).
  */
 var priority: Int;

 /**
  * Removes state at end of battle (true/false).
  */
 var removeAtBattleEnd: Bool;

 /**
  * Removes state by action restriction (true/false).
  */
 var removeByRestriction: Bool;

 /**
  * The timing of automatic state removal.
  *
  * 0: None
  * 1: At end of action
  * 2: At end of turn
  */
 var autoRemovalTiming: Int;

 /**
  * The minimum turns of the duration.
  */
 var minTurns: Int;

 /**
  * The maximum turns of the duration.
  */
 var maxTurns: Int;

 /**
  * Removes state by damage (true/false).
  */
 var removeByDamage: Bool;

 /**
  * Chance of state being removed by damage (%).
  */
 var chanceByDamage: Float;

 /**
  * Removes state by walking (true/false).
  */
 var removeByWalking: Bool;

 /**
  * Number of steps until state is removed.
  */
 var stepToRemove: Int;

 /**
  * The icon number.
  */
 var iconIndex: Int;

 /**
  * The message when an actor fell in the state.
  */
 var message1: String;

 /**
  * The message when an enemy fell in the state.
  */
 var message2: String;

 /**
  * The message when the state remains.
  */
 var message3: String;

 /**
  * The message when the state is removed.
  */
 var message4: Int;

 /**
  * The side-view motion.
  */
 var motion: Int;

 /**
  * The side-view overlay.
  */
 var overlay: Int;

 /**
  * The array of Trait data.
  */
 var traits: Array<Trait>;

 var ?releaseByDamage: Bool;
 var ?description: String;
}

/**
 * The data class for actors.
 */
typedef Actor = {
 > Metadata,

 /**
  * The ID.
  */
 var id: String;

 /**
  * The name.
  */
 var name: String;

 /**
  * The actor's nickname.
  */
 var nickname: String;

 /**
  * The actor's class ID.
  */
 var classId: Int;

 /**
  * The actor's initial level.
  */
 var initialLevel: Int;

 /**
  * The actor's max level
  */
 var maxLevel: Int;

 /**
  * The file name of the actor's walking graphic.
  */
 var characterName: String;

 /**
  * The index (0..7) of the actor's walking graphic.
  */
 var characterIndex: Int;

 /**
  * The file name of the actor's face graphic.
  */
 var faceName: String;

 /**
  * The index (0..7) of the actor's face graphic.
  */
 var faceIndex: Int;

 /**
  * The file name of the actor's battler graphic.
  */
 var battlerName: String;

 /**
  * The actor's initial equipment. An array of weapon IDs or armor IDs with the following subscripts:
  */
 var equips: Array<Int>;

 /**
  * The profile.
  */
 var profile: String;

 /**
  * The array of Trait data.
  */
 var traits: Array<Trait>;
}

/**
 * The data class for class.
 */
typedef RPGClass = {
 > Metadata,

 /**
  * The ID.
  */
 var id: Int;

 /**
  * The name.
  */
 var name: String;

 /**
  * An array of values that decides the experience curve. The subscripts are as follows:
  *
  * 0: Base value
  * 1: Extra value
  * 2: Acceleration A
  * 3: Acceleration B
  */
 var expParams: Array<Int>;

 /**
  * The parameter development curve. A 2-dimensional array containing ordinary parameters according to level (Table).
  *
  * The format is params[param_id, level], and param_id is assigned as follows:
  *
  * 0: Maximum hit points
  * 1: Maximum magic points
  * 2: Attack power
  * 3: Defense power
  * 4: Magic attack power
  * 5: Magic defense power
  * 6: Agility
  * 7: Luck
  */
 var params: Array<Array<Int>>;

 /**
  * The skills to learn. An array of RPG.Class.Learning.
  */
 var learnings: Array<ClassLearning>;

 /**
  * The array of Trait data.
  */
 var traits: Array<Trait>;
}

/**
 * The data class for a class's [Skills to Learn].
 */
typedef ClassLearning = {
 > Metadata,

 /**
  * The data class for a class's [Skills to Learn].
  */
 var level: Int;

 /**
  * The ID of the skill to learn.
  */
 var skillId: Int;
}
