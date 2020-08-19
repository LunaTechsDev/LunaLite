package rm.abstracts.windows;

import rm.windows.Window_PartyCommand;

@:forward
@:forwardStatics
abstract WindowPartyCommand(Window_PartyCommand) from Window_PartyCommand
 to Window_PartyCommand {
 public inline function new() {
  this = new Window_PartyCommand();
 }
}
