# macOS Installation Guide

Follow these steps to install the necessary tools for the **Orchestration Fundamentals for Agentic Development** course on macOS.

## 1. Install Homebrew

If you do not have Homebrew installed, open your Terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 2. Install Git

Use Homebrew to install Git:

```bash
brew install git
```

Verify the installation:

```bash
git --version
```

## 3. Install Python 3

Use Homebrew to install Python 3:

```bash
brew install python
```

Verify the installation:

```bash
python3 --version
```

## 4. Install Node.js (Prerequisite for Claude Code)

Claude Code requires Node.js (version 18 or later).

```bash
brew install node
```

Verify the installation:

```bash
node -v
npm -v
```

## 5. Install Claude Code

Install Claude Code globally using `npm`:

```bash
npm install -g @anthropic-ai/claude-code
```

Verify the installation by checking the version:

```bash
claude --version
```

Once installed, you may need to authenticate by running:

```bash
claude login
```
