# Windows Installation Guide

Follow these steps to install the necessary tools for the **Orchestration Fundamentals for Agentic Development** course on Windows.

## 1. Install Git

Download and install Git for Windows from the official website:
[https://gitforwindows.org/](https://gitforwindows.org/)

During installation, the default options are generally fine.

Verify the installation by opening Command Prompt or PowerShell and running:

```powershell
git --version
```

## 2. Install Python 3

Download the latest Python 3 installer for Windows from the official website:
[https://www.python.org/downloads/windows/](https://www.python.org/downloads/windows/)

**Important:** Check the box that says "Add Python to PATH" during the installation process.

Verify the installation:

```powershell
python --version
```

## 3. Install Node.js (Prerequisite for Claude Code)

Claude Code requires Node.js (version 18 or later).

Download the Windows Installer (.msi) from the official Node.js website:
[https://nodejs.org/en/download/](https://nodejs.org/en/download/)

Verify the installation:

```powershell
node -v
npm -v
```

## 4. Install Claude Code

Open PowerShell or Command Prompt as Administrator and install Claude Code globally using `npm`:

```powershell
npm install -g @anthropic-ai/claude-code
```

Verify the installation by checking the version:

```powershell
claude --version
```

Once installed, you may need to authenticate by running:

```powershell
claude login
```
