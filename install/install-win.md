# Windows Installation Guide

Follow these steps to install the necessary tools and dependencies for the Orchestration Fundamentals for Agentic Development course on your Windows machine.

## 1. Install Git

Git is required for version control and branching during the labs. We recommend installing Git for Windows.

- Download and install Git from: [https://git-scm.com/download/win](https://git-scm.com/download/win)
- During installation, the default settings are generally fine.

Verify the installation by opening Command Prompt or PowerShell and running:
```cmd
git --version
```

## 2. Install Node.js

Node.js is required to run and install Claude Code via `npm`.

- Download the Windows Installer (.msi) for the LTS version from: [https://nodejs.org/](https://nodejs.org/)
- Run the installer and follow the prompts (default settings are fine).

Verify the installation:
```cmd
node -v
npm -v
```

## 3. Install Claude Code

Claude Code is the primary agentic development tool used in this course. Install it globally using `npm`:

```cmd
npm install -g @anthropic-ai/claude-code
```

Verify the installation by checking its version:
```cmd
claude --version
```

## 4. IDE / Editor

You can use your preferred IDE or text editor. Visual Studio Code is highly recommended.

- Download and install VS Code from: [https://code.visualstudio.com/](https://code.visualstudio.com/)

## Next Steps

Once all installations are complete and verified, you are ready for the course! Return to the [Main Install Guide](./install.md).
