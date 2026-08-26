const path = require("node:path");
const { spawnSync } = require("node:child_process");

const script = path.join(__dirname, "verify.sh");
const result = spawnSync("bash", [script], {
  encoding: "utf8",
  shell: process.platform === "win32",
  windowsHide: true,
});

if (result.stdout) {
  process.stdout.write(result.stdout);
}
if (result.stderr) {
  process.stderr.write(result.stderr);
}
if (result.error) {
  console.error(`[FAIL] Bash: ${result.error.message}`);
  process.exitCode = 1;
} else {
  process.exitCode = result.status;
}
