package core;

/**
 * Asset Folder Files
 * We can't import macros when using build macros
 * and have to use the full path name.
 * Add your paths here as build directives to the root folder
 * for more assets.
 */
@:build(macros.BuildMacroTools.buildFileList("assets/"))
class Assets {
 // public function new() {
 //    MacroTools.buildFileList("assets/");
 // }
}
