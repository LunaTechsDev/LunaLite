package macros;

import haxe.io.Path;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import sys.FileSystem;
import sys.io.File;

using Lambda;
using StringTools;

class BuildMacroTools {
	macro public static function buildFileList(path:String):Array<Field> {
		var fields = Context.getBuildFields();
    var files = FileSystem.readDirectory(path);
    
    var createFileField = (path:String, file:String) -> {
			var cleanFileName = ~/\.\w+/g.replace(file, "").replace("-", "_").replace(" ", "_");
			var newField:Field = {
				name: cleanFileName,
				access: [Access.APublic, Access.AStatic, Access.AInline],
				kind: FieldType.FVar(macro:String, macro $v{path + file}),
				pos: Context.currentPos(),
				doc: null,
				meta: []
			};
			fields.push(newField);
    };

		var traverseFiles = (fn:(Dynamic, String, String) -> Void, path:String, file:String) -> {
			switch (FileSystem.isDirectory(path + file)) {
				case true:
          var bindFn = fn.bind(fn, path + file + "/", _);
					FileSystem.readDirectory(path + file).iter(bindFn);
				case false:
          createFileField(path, file);
			}
    };
    
		files.iter((file) -> {
			traverseFiles(traverseFiles, path, file);
		});
		return fields;
	}
}
