const fs = require("fs");

const allFiles = fs.readdirSync("dist/", "utf-8");
allFiles.forEach((file) => {
  const contents = fs.readFileSync(`dist/${file}`, "utf-8");
  cleanOutput = contents.replace(/\*\/;/g, "*/").replace(/==;/g, "==")
  //replace(/(\/\/.+\s*);/g,$1)
  fs.writeFileSync(`dist/${file}`, cleanOutput)
});

