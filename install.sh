#!/bin/bash

BASHRC="$HOME/.bashrc"
DEFAULT_BASHRC="/mnt/vol_NFS_rh003/estudiantes/cmata/vmware-share/.bashrc"
CCP_SCRIPT="ccp.sh"

if [ ! -f "$CCP_SCRIPT" ]; then
  echo "Error: ccp.sh not found in this folder."
  exit 1
fi

# Check if ~/.bashrc exists
if [ ! -f "$BASHRC" ]; then
  echo "~/.bashrc does not exist. Copying from the repository."
  cp "$DEFAULT_BASHRC" "$BASHRC"\  echo "Copied .bashrc from the repository. Run: source $BASHRC"
  exit 0
fi

# Ask if the user wants to overwrite or append
read -p "Do you want to overwrite (o) or append (a) the repository .bashrc? (o/a): " choice
if [[ "$choice" =~ ^[Oo]$ ]]; then
  cp "$DEFAULT_BASHRC" "$BASHRC"
  echo "Overwritten .bashrc with the repository version. Run: source $BASHRC"
elif [[ "$choice" =~ ^[Aa]$ ]]; then
  cat "$DEFAULT_BASHRC" >> "$BASHRC"
  echo "Appended repository .bashrc to existing .bashrc. Run: source $BASHRC"
else
  echo "No changes made to .bashrc."
fi

chmod +x "$CCP_SCRIPT"

echo "Installation complete. Open a new shell or run: source $BASHRC"

