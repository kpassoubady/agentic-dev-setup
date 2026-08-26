# macOS Installation Guide

Use these steps to prepare macOS for **Orchestration Fundamentals for Agentic Development**.

## 1. Confirm the system requirements

Claude Code requires macOS 13 or later, 4 GB or more of memory, and internet access. Check your macOS version in Terminal:

```bash
sw_vers -productVersion
```

## 2. Install and verify Git

First check whether Git is already available:

```bash
git --version
```

If it is missing, install Apple's Command Line Tools:

```bash
xcode-select --install
```

Complete the graphical installer, open a new Terminal window, and rerun `git --version`.

## 3. Verify Bash

macOS includes a compatible Bash version. Confirm that it is Bash 3.2 or later:

```bash
bash --version
```

The first line must report version 3.2 or later.

## 4. Install Claude Code

Use Anthropic's recommended native installer:

```bash
curl -fsSL https://claude.ai/install.sh | bash
```

Open a new Terminal window after installation, then verify Claude Code:

```bash
claude --version
```

A working installation prints a Claude Code version number. The native installation updates automatically.

## 5. Authenticate Claude Code

Claude Code requires an eligible Claude or Console account supplied or approved for the course. Start an interactive session:

```bash
claude
```

Follow the browser prompts to sign in. Do not paste credentials, API keys, or access tokens into course files or support messages. Exit Claude Code after confirming that the session starts successfully.

## 6. Install a code editor

Use any editor you are comfortable with. Visual Studio Code is recommended and can be installed from its [official download page](https://code.visualstudio.com/Download).

Open the editor once to confirm that it launches. Installing the optional `code` command in your shell is useful but not required.

## 7. Run the course setup test

From the repository root, run:

```bash
bash test-setup/verify.sh
```

The final line must be:

```text
SUCCESS: All required command-line tools are installed.
```

Then confirm the two manual checks printed by the script: Claude Code authentication and a working code editor.

Return to the [main installation guide](install.md) if you need the setup overview.
