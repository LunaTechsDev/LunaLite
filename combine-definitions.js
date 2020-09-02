const fs = require("fs")


let combineFiles = (file1, file2, file3, outputFile) => {
  const fileContent = fs.readFileSync(file1, "utf8")
  const fileContent2 = fs.readFileSync(file2, "utf8")
  const fileContent3 = fs.readFileSync(file3, "utf8")

  fs.writeFileSync(outputFile, fileContent + fileContent2 + fileContent3, "utf8")
}


combineFiles("definitions/pixi-4.5.4.d.ts", "definitions/lunalite-mv.d.ts","definitions/lunalite-globals.d.ts" , "definitions/lunalite-pixi-mv.d.ts")
combineFiles("definitions/pixi-5.2.4.js.d.ts", "definitions/lunalite-mz.d.ts", "definitions/lunalite-globals.d.ts", "definitions/lunalite-pixi-mz.d.ts")



