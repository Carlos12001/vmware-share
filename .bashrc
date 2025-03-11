# Source global definitions if available
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User-specific environment (restoring missing part)
if [[ ":$PATH:" != *":$HOME/.local/bin:$HOME/bin:"* ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Add vmware-share path to PATH
export PATH="$PATH:/mnt/vol_NFS_rh003/estudiantes/cmata/vmware-share"

# Alias to quickly change directory
alias ccd='cd /mnt/vol_NFS_rh003/estudiantes/cmata'

# Alias to run ccp.sh without .sh extension
alias ccp='ccp.sh'

