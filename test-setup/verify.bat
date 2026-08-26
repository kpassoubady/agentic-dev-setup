@echo off
setlocal

set "BASH_EXE="
if exist "%ProgramFiles%\Git\bin\bash.exe" set "BASH_EXE=%ProgramFiles%\Git\bin\bash.exe"
if not defined BASH_EXE if exist "%LocalAppData%\Programs\Git\bin\bash.exe" set "BASH_EXE=%LocalAppData%\Programs\Git\bin\bash.exe"

if not defined BASH_EXE (
  where bash >nul 2>nul
  if not errorlevel 1 set "BASH_EXE=bash"
)

if not defined BASH_EXE (
  echo Course setup validation
  echo =======================
  echo [FAIL] Bash: Git Bash was not found
  echo =======================
  echo SETUP INCOMPLETE: Install Git for Windows with Git Bash, then retry.
  exit /b 1
)

"%BASH_EXE%" "%~dp0verify.sh"
exit /b %errorlevel%
