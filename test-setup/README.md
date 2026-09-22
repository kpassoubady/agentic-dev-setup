# Legacy Course Setup Test

This compatibility path remains available so links and commands in previously distributed copies of `Welcome.md` and `Welcome.pdf` continue to work.

For the current requirements and verification workflow, use:

- [Course installation guides](../install/install.md)
- [Verification Quickstart](../quickstart-project/README.md)

## Run the legacy validator

The legacy script still verifies Bash, Git, Claude Code, and an optional Visual Studio Code command-line installation.

### macOS or Git Bash on Windows

From the repository root, run:

```bash
bash test-setup/verify.sh
```

### Windows Command Prompt

```bat
test-setup\verify.bat
```

A successful legacy run ends with:

```text
SUCCESS: All required command-line tools are installed.
```

After it passes, complete the current Python 3 and Node.js checks described in the installation guides and run the current quickstart.
