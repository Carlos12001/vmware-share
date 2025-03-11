#!/bin/bash

BASHRC="$HOME/.bashrc"
CCP_SCRIPT="ccp.sh"

# Determine the default path dynamically (one directory above the script location)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEFAULT_PATH="$(dirname "$SCRIPT_DIR")"

# Prompt user for the vmware-share path
read -p "Enter the full path where vmware-share is installed (default: $DEFAULT_PATH): " REPO_PATH
REPO_PATH=${REPO_PATH:-$DEFAULT_PATH}

# Verify the path exists
if [ ! -d "$REPO_PATH/vmware-share" ]; then
  echo "Error: The directory $REPO_PATH/vmware-share does not exist."
  exit 1
fi

# Update ccp.sh with the new REPO_PATH
sed -i "s|^REPO_DIR=.*|REPO_DIR=\"$REPO_PATH/vmware-share\"|" "$CCP_SCRIPT"
chmod +x "$CCP_SCRIPT"

# Check if ~/.bashrc exists, if not, copy from repository
if [ ! -f "$BASHRC" ]; then
  echo "~/.bashrc does not exist. Copying from the repository."
  cp "$REPO_PATH/vmware-share/.bashrc" "$BASHRC"
  echo "Copied .bashrc from the repository. Run: source $BASHRC"
  exit 0
fi

# Ask if the user wants to overwrite or append the repository .bashrc
read -p "Do you want to overwrite (o) or append (a) the repository .bashrc? (o/a): " choice
if [[ "$choice" =~ ^[Oo]$ ]]; then
  cp "$REPO_PATH/vmware-share/.bashrc" "$BASHRC"
  echo "Overwritten .bashrc with the repository version. Run: source $BASHRC"
elif [[ "$choice" =~ ^[Aa]$ ]]; then
  cat "$REPO_PATH/vmware-share/.bashrc" >> "$BASHRC"
  echo "Appended repository .bashrc to existing .bashrc. Run: source $BASHRC"
else
  echo "No changes made to .bashrc."
fi

echo "Installation complete. Open a new shell or run: source $BASHRC"

