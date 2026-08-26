# Course Setup Test

Use this project to verify the command-line environment required for **Orchestration Fundamentals for Agentic Development**. The scripts only run version commands; they do not install software, access credentials, or modify your system.

## What it checks

| Tool | Requirement |
|:---|:---|
| Bash | Version 3.2 or later |
| Git | Required and available from `PATH` |
| Claude Code | Required and available from `PATH` |
| Visual Studio Code CLI | Optional because another editor may be used |

The course does not require Node.js, npm, Python, or third-party project packages.

## Run on macOS

From the repository root, run:

```bash
bash test-setup/verify.sh
```

## Run on Windows

Open Git Bash in the repository root and run:

```bash
bash test-setup/verify.sh
```

You can alternatively run this from Command Prompt:

```bat
test-setup\verify.bat
```

The Windows wrapper locates Git Bash and runs the same verification script.

## Expected result

A successful run ends with exactly one success marker:

```text
SUCCESS: All required command-line tools are installed.
```

If a required check fails, the script prints `[FAIL]`, provides an incomplete-setup summary, and returns a nonzero status.

## Complete the manual checks

After the automated test passes:

1. Run `claude` and confirm that you are authenticated with the account approved for the course.
2. Open your preferred code editor and confirm that it works.

See the operating-system-specific guides in the repository's [`install`](../install/) directory if any check fails.
