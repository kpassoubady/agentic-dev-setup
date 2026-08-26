# Orchestration Fundamentals for Agentic Development — Setup

Standalone pre-class installation and verification repository for the four-hour course **Orchestration Fundamentals for Agentic Development**. Students may receive this repository before other course materials are available.

## Course environment

- **Platforms:** macOS 13+ and Windows 10 version 1809+
- **Course tools:** Git, Bash 3.2+, Claude Code, and a code editor
- **Credentials:** An eligible Claude or Console account is required for the manual authentication check
- **Not required:** Node.js, npm, Python, and third-party project packages

## Repository structure

| Path | Purpose |
|:---|:---|
| `catalog/` | Approved course outline copied without setup-specific edits |
| `install/` | Main, macOS, and Windows installation guides |
| `test-setup/` | Safe cross-platform command-line verification scripts and instructions |
| `Welcome.md` | Student-facing pre-class message and checklist |
| `README.md` | Concise repository entry point |
| `llm-context/` | Local context folders for repository maintenance |

The canonical validator is `test-setup/verify.sh`. `test-setup/verify.bat` locates Git Bash on Windows and delegates to the same script. The optional `package.json` and `test.js` launcher must not make Node.js a course prerequisite.

## Verification commands

Run from the repository root:

```bash
bash test-setup/verify.sh
```

The success marker is:

```text
SUCCESS: All required command-line tools are installed.
```

Also run Markdown linting according to `.markdownlint.json` and check local links whenever documentation changes.

## Conventions

- Keep all student-facing material self-contained within this repository.
- Do not name, link to, or require sibling repositories.
- Do not include local machine paths, secrets, credentials, or environment files.
- Keep `catalog/agentic-dev-4-hrs-am-pm-outline.md` byte-for-byte aligned with its approved source.
- Keep tool names, commands, paths, and the success marker consistent across the guides, quickstart, welcome message, README, and this file.
- Use absolute GitHub URLs in `Welcome.md`; use relative links in other Markdown files.
- Preserve the separation between safe automated checks and manual authentication or graphical-editor checks.
