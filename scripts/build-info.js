const fs = require("node:fs");
const path = require("node:path");

const outDir = path.join(__dirname, "..", "dist");
const outFile = path.join(outDir, "build-info.json");

fs.mkdirSync(outDir, { recursive: true });
fs.writeFileSync(
  outFile,
  JSON.stringify(
    {
      builtAt: new Date().toISOString(),
      nodeVersion: process.version
    },
    null,
    2
  )
);

console.log(`Created ${outFile}`);
