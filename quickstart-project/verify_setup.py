import subprocess
import sys

def check_command(command, name):
    try:
        result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, check=True)
        version = result.stdout.strip().split('\n')[0]
        if not version:
            version = result.stderr.strip().split('\n')[0]
        print(f"✅ {name} found: {version}")
        return True
    except (subprocess.CalledProcessError, FileNotFoundError):
        print(f"❌ {name} is missing or not working properly.")
        return False

def main():
    print("Verifying Course Setup...\n")
    
    checks = [
        (["git", "--version"], "Git"),
        (["python3", "--version"], "Python 3"),
        (["claude", "--version"], "Claude Code")
    ]
    
    all_passed = True
    for cmd, name in checks:
        if not check_command(cmd, name):
            all_passed = False
            
    print("\n------------------------------------------------")
    if all_passed:
        print("🎉 SUCCESS: All required tools are installed correctly!")
        sys.exit(0)
    else:
        print("⚠️  FAILURE: Some required tools are missing.")
        print("Please review the installation guides in the 'install/' directory.")
        sys.exit(1)

if __name__ == "__main__":
    main()
