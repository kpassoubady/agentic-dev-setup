# Windows Installation Guide

Use these steps to prepare Windows for **Orchestration Fundamentals for Agentic Development**. The course labs run Bash scripts, so Git for Windows and its Git Bash terminal are required.

## 1. Confirm the system requirements

Claude Code requires Windows 10 version 1809 or later, 4 GB or more of memory, and internet access. Press `Win + R`, enter `winver`, and confirm the Windows version before continuing.

## 2. Install Git for Windows and Git Bash

Install Git for Windows from the [official download page](https://git-scm.com/download/win). Keep the Git Bash component selected during installation.

Close and reopen your terminals, then launch **Git Bash** from the Start menu. Run all remaining course verification commands in Git Bash unless a step explicitly says PowerShell.

Verify Git:

```bash
git --version
```

## 3. Verify Bash

In Git Bash, run:

```bash
bash --version
```

The first line must report version 3.2 or later.

## 4. Install Claude Code

Open PowerShell. You do not need to run it as Administrator. Use Anthropic's recommended native installer:

```powershell
irm https://claude.ai/install.ps1 | iex
```

Close PowerShell and Git Bash, reopen Git Bash, and verify Claude Code:

```bash
claude --version
```

A working installation prints a Claude Code version number. The native installation updates automatically.

## 5. Authenticate Claude Code

Claude Code requires an eligible Claude or Console account supplied or approved for the course. In Git Bash, start an interactive session:

```bash
claude
```

Follow the browser prompts to sign in. Do not paste credentials, API keys, or access tokens into course files or support messages. Exit Claude Code after confirming that the session starts successfully.

## 6. Install a code editor

Use any editor you are comfortable with. Visual Studio Code is recommended and can be installed from its [official download page](https://code.visualstudio.com/Download).

Open the editor once to confirm that it launches. Installing the optional `code` command in your shell is useful but not required.

## 7. Run the course setup test

From the repository root in Git Bash, run:

```bash
bash test-setup/verify.sh
```

You can also run the Windows Command Prompt wrapper:

```bat
test-setup\verify.bat
```

The final line must be:

```text
SUCCESS: All required command-line tools are installed.
```

Then confirm the two manual checks printed by the script: Claude Code authentication and a working code editor.

Return to the [main installation guide](install.md) if you need the setup overview.
