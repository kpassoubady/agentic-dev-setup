#!/usr/bin/env bash

failures=0

pass() {
  printf '[PASS] %s: %s\n' "$1" "$2"
}

fail() {
  printf '[FAIL] %s: %s\n' "$1" "$2"
  failures=$((failures + 1))
}

check_command() {
  name="$1"
  command_name="$2"
  shift 2

  if ! command -v "$command_name" >/dev/null 2>&1; then
    fail "$name" 'not found in PATH'
    return
  fi

  output="$($command_name "$@" 2>&1)"
  status=$?
  first_line="${output%%$'\n'*}"
  if [ "$status" -eq 0 ]; then
    pass "$name" "${first_line:-installed}"
  else
    fail "$name" 'found but not runnable'
  fi
}

printf '%s\n' 'Course setup validation'
printf '%s\n' '======================='

if [ "${BASH_VERSINFO[0]}" -gt 3 ] || {
  [ "${BASH_VERSINFO[0]}" -eq 3 ] && [ "${BASH_VERSINFO[1]}" -ge 2 ];
}; then
  pass 'Bash' "$BASH_VERSION"
else
  fail 'Bash' "$BASH_VERSION found; version 3.2 or later is required"
fi

check_command 'Git' git --version
check_command 'Claude Code' claude --version

if command -v code >/dev/null 2>&1; then
  editor_version="$(code --version 2>&1)"
  pass 'VS Code CLI' "${editor_version%%$'\n'*}"
else
  printf '%s\n' '[WARN] VS Code CLI: not found in PATH (optional; another editor is fine)'
fi

printf '%s\n' '======================='
if [ "$failures" -eq 0 ]; then
  printf '%s\n' 'SUCCESS: All required command-line tools are installed.'
  printf '%s\n' 'Manual check: start `claude` and confirm that you are authenticated.'
  printf '%s\n' 'Manual check: confirm that your preferred code editor opens normally.'
  exit 0
fi

printf 'SETUP INCOMPLETE: %s required check(s) failed.\n' "$failures"
printf '%s\n' 'Review the installation guide, then run this test again.'
exit 1
