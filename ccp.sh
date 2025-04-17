#!/bin/bash
###############################################################################
# CCP (Copy‑Commit‑Push) utility                                              #
#                                                                             #
# This version stores the stack directly into README.md using Markdown:       #
#   * Each entry is wrapped as a code block                                   #
#   * Every entry starts with a level‑2 header containing the timestamp       #
#   * Entries are separated internally by an HTML comment that Markdown       #
#     ignores, so README renders cleanly while awk can still split sections   #
#                                                                             #
# All comments are intentionally written in English, as requested.            #
###############################################################################

###############################################################################
# Repository path (edit here only if you move the repo)                       #
###############################################################################
REPO_DIR="/mnt/vol_NFS_rh003/estudiantes/cmata/vmware-share"
FILE="${REPO_DIR}/README.md"

###############################################################################
# Internal separator used by awk – invisible to Markdown                      #
###############################################################################
SEPARATOR="<!--CCP_SEPARATOR-->"

# Create README.md if it does not exist
[ -f "$FILE" ] || touch "$FILE"

###############################################################################
# ccp push <text> or  some_command | ccp push                                 #
# Prepends a Markdown block to README.md                                      #
###############################################################################
ccp_push() {
  # Capture input either from pipe (stdin) or from CLI arguments
  if [ ! -t 0 ]; then
    INPUT=$(cat)
  else
    INPUT="$*"
  fi

  # Timestamp for the header
  TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')

  # Build the Markdown block to prepend
  NEW_BLOCK=$'\n'"${SEPARATOR}"$'\n\n'"## ${TIMESTAMP}"$'\n\n```bash\n'"${INPUT}"$'\n```'$'\n'

  # Prepend to README.md
  printf "%s" "${NEW_BLOCK}" | cat - "$FILE" > "${FILE}.tmp"
  mv "${FILE}.tmp" "${FILE}"
}

###############################################################################
# ccp pop – show and remove the most recent entry                             #
###############################################################################
ccp_pop() {
  awk -v RS="${SEPARATOR}" 'NR==2 {print $0}' "$FILE"
  awk -v RS="${SEPARATOR}" 'NR>2  {print $0 RS}' "$FILE" > "${FILE}.tmp"
  mv "${FILE}.tmp" "${FILE}"
}

###############################################################################
# ccp send <commit message> – git add/commit/push README.md                   #
###############################################################################
ccp_send() {
  COMMIT_MSG="$*"
  [ -z "$COMMIT_MSG" ] && COMMIT_MSG="docs: update README log"

  cd "$REPO_DIR" || exit 1
  git add "README.md"
  git commit -m "$COMMIT_MSG"
  git push
}

###############################################################################
# ccp check [n] – print the nth most recent entry (0 = latest)                #
###############################################################################
ccp_check() {
  local n="${1:-0}"
  awk -v RS="${SEPARATOR}" -v n="$n" 'NR == (n+1)*2 {print $0}' "$FILE"
}

###############################################################################
# ccp size – total number of entries                                          #
###############################################################################
ccp_size() {
  awk -v RS="${SEPARATOR}" 'END {print (NR-1)/2}' "$FILE"
}

###############################################################################
# ccp clear – wipe the log completely                                         #
###############################################################################
ccp_clear() {
  > "$FILE"
}

###############################################################################
# ccp show – print the full README                                            #
###############################################################################
ccp_show() {
  cat "$FILE"
}

###############################################################################
# Command dispatcher                                                          #
###############################################################################
case "$1" in
  push)
    shift
    ccp_push "$@"
    ;;
  pop)
    ccp_pop
    ;;
  send)
    shift
    ccp_send "$@"
    ;;
  check)
    ccp_check "$2"
    ;;
  size)
    ccp_size
    ;;
  clear)
    ccp_clear
    ;;
  show)
    ccp_show
    ;;
  *)
    echo "Usage: $0 {push <text>|pop|send <msg>|check [n]|size|clear|show}"
    exit 1
    ;;
esac
