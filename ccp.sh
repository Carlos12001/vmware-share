#!/bin/bash

############################################
# EDIT THIS VARIABLE TO CHANGE THE PATH   #
############################################
REPO_DIR=""
FILE="$REPO_DIR/information.txt"
SEPARATOR="===================================="

# Create the file if it does not exist
touch "$FILE"

###############################################################################
# Functions                                                                   #
###############################################################################

# ccp push <text>  
# Inserts <text> at the FIRST LINE of 'information.txt' (top of the stack).
ccp_push() {
  echo -e "\n$SEPARATOR\n$*\n$SEPARATOR\n" | cat - "$FILE" > "$FILE.tmp"
  mv "$FILE.tmp" "$FILE"
}

# ccp pop
# Displays and removes the FIRST LINE from the file (the most recent element).
ccp_pop() {
  # Display the first section
  awk -v RS="$SEPARATOR" 'NR==2 {print $0}' "$FILE"
  # Remove the first section
  awk -v RS="$SEPARATOR" 'NR>2 {print $0 RS}' "$FILE" > "$FILE.tmp"
  mv "$FILE.tmp" "$FILE"
}

# ccp send <commit_message>
# Performs a real git add, commit, and push inside $REPO_DIR
ccp_send() {
  COMMIT_MSG="$*"
  # Default message if none is provided using Conventional Commits format
  [ -z "$COMMIT_MSG" ] && COMMIT_MSG="chore: update information.txt"

  # Change to the repository directory
  cd "$REPO_DIR" || exit 1

  # Add the file, commit, and push
  git add "information.txt"
  git commit -m "$COMMIT_MSG"
  git push
}

# ccp check n
# If no argument is provided, defaults to 0 => last push
# check 0 => last push, check 1 => second to last, etc.
ccp_check() {
  local n="${1:-0}"
  # Using AWK record separator = $SEPARATOR
  # The last push is at NR=2, second to last at NR=4, etc. => NR==(n+1)*2
  awk -v RS="$SEPARATOR" -v n="$n" 'NR == (n+1)*2 {print $0}' "$FILE"
}

# ccp size
# Displays the total number of elements in the stack.
ccp_size() {
  awk -v RS="$SEPARATOR" 'END {print (NR-1)/2}' "$FILE"
}

# ccp clear
# Clears all content (resets the stack).
ccp_clear() {
  > "$FILE"
}

# ccp show
# Displays the full content of information.txt
ccp_show() {
  cat "$FILE"
}

###############################################################################
# Command Selector                                                            #
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
    echo "Usage: $0 {push <text> | pop | send [message] | check [n] | size | clear | show}"
    exit 1
    ;;
esac

