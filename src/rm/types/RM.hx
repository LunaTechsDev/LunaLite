package rm.types;

import rm.objects.Game_Player;
import rm.objects.Game_Map;
import rm.objects.Game_Party;
import rm.objects.Game_Actors;
import rm.objects.Game_SelfSwitches;
import rm.objects.Game_Screen;
import rm.types.RPG.BaseItem;

typedef Matrix = {
 type: String,
 value: Array<Int>
}

typedef TouchInputEvents = {
 trigger: Bool,
 cancelled: Bool,
 moved: Bool,
 released: Bool,
 wheelX: Int,
 wheelY: Int,
}

typedef AudioParameters = {
 name: String,
 volume: Int,
 pitch: Int,
 pan: Int,
 pos: Int
}

typedef BattleRewards = {
 gold: Int,
 exp: Int,
 items: Array<BaseItem>
}

typedef BattlerAnimation = {
 animationId: Int,
 mirror: Bool,
 delay: Int,
}

typedef CommandItem = {
 name: String,
 symbol: String,
 enabled: Bool,
 ext: Any
}

typedef TextState = {
 index: Int,
 x: Int,
 y: Int,
 startX: Int,
 left: Int,
 text: String
}

typedef BattleLogMethod = {
 name: String,
 params: Any
}

typedef ConfigData = {
 alwaysDash: Bool,
 commandRemember: Bool,
 bgmVolume: Int,
 bgsVolume: Int,
 meVolume: Int,
 seVolume: Int
}

typedef DatabaseFile = {
 name: String,
 src: String
}

typedef SaveFileInfo = {
 globalId: String,
 title: String,
 characters: Array<Array<Any>>,
 faces: Array<Array<Any>>,
 playtime: String,
 timestamp: Float,
}

typedef SaveContents = {
 // system:Game_System,
 screen: Game_Screen,
 selfSwitches: Game_SelfSwitches,
 actors: Game_Actors,
 party: Game_Party,
 map: Game_Map,
 player: Game_Player
}

typedef PluginSettings = {
 name: String,
 status: String,
 description: String,
 parameters: {key: String}
 // Any //{key:String}:String
}

typedef Motion = {
 var index: Int;
 var loop: Bool;
}
