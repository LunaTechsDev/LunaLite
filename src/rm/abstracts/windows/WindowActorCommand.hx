package rm.abstracts.windows;

import rm.windows.Window_ActorCommand;

@:forward
@:forwardStatics
abstract WindowActorCommand(Window_ActorCommand) from Window_ActorCommand
 to Window_ActorCommand {
 public inline function new() {
  this = new Window_ActorCommand();
 }
}
