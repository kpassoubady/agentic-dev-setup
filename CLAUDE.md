# Orchestration Fundamentals for Agentic Development — Setup

Standalone pre-class installation and verification repository for the four-hour course **Orchestration Fundamentals for Agentic Development**. Students may receive this repository before other course materials are available.

## Course environment

- **Platforms:** macOS and Windows
- **Course tools:** Git, Python 3, Node.js, Claude Code, and a terminal
- **Credentials:** An eligible Claude or Console account is required for authentication

## Repository structure

| Path | Purpose |
|:---|:---|
| `catalog/` | Approved course outline copied under the established destination filename |
| `install/` | Main, macOS, and Windows installation guides |
| `quickstart-project/` | Current Python verification script and instructions |
| `test-setup/` | Legacy verification path retained for previously distributed links |
| `Welcome.md` | Student-facing pre-class message and checklist |
| `Welcome.pdf` | Previously distributed welcome document |
| `README.md` | Concise repository entry point |
| `llm-context/` | Local context folders for repository maintenance |

The canonical validator is `quickstart-project/verify_setup.py`. The legacy `test-setup/` files must remain available so links and commands in previously distributed copies of `Welcome.md` and `Welcome.pdf` continue to resolve.

## Verification commands

Run from the repository root:

```bash
cd quickstart-project
python3 verify_setup.py
```

The success marker is:

```text
🎉 SUCCESS: All required tools are installed correctly!
```

Also run the legacy compatibility validator and check Markdown links whenever documentation changes.

## Conventions

- Keep all student-facing material self-contained within this repository.
- Do not name, link to, or require sibling repositories.
- Do not include local machine paths, secrets, credentials, or environment files.
- Keep `catalog/agentic-dev-4-hrs-am-pm-outline.md` byte-for-byte aligned with the approved source catalog.
- Keep current tool names, commands, paths, and the success marker consistent across the guides, quickstart, welcome message, README, and this file.
- Preserve `install/`, `catalog/agentic-dev-4-hrs-am-pm-outline.md`, and `test-setup/` as compatibility targets for previously distributed materials.
- Use absolute GitHub URLs in `Welcome.md`; use relative links in other Markdown files.
