# macOS Installation Guide

Follow these steps to install the necessary tools and dependencies for the Orchestration Fundamentals for Agentic Development course on your macOS machine.

## 1. Install Homebrew (If not already installed)

Homebrew is a package manager for macOS that makes installing tools easy. Open your terminal and run:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## 2. Install Git

Git is required for version control and branching during the labs.

```bash
brew install git
```

Verify the installation:
```bash
git --version
```

## 3. Install Node.js

Node.js is required to run and install Claude Code via `npm`. 

```bash
brew install node
```

Verify the installation:
```bash
node -v
npm -v
```

## 4. Install Claude Code

Claude Code is the primary agentic development tool used in this course. Install it globally using `npm`:

```bash
npm install -g @anthropic-ai/claude-code
```

Verify the installation by checking its version:
```bash
claude --version
```

## 5. IDE / Editor

You can use your preferred IDE or text editor. Visual Studio Code is highly recommended.

```bash
brew install --cask visual-studio-code
```

## Next Steps

Once all installations are complete and verified, you are ready for the course! Return to the [Main Install Guide](./install.md).
