# path, the 0 in the filename causes this to load first

pathAppend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | grep -E -q "(^|:)$1($|:)" ; then
    PATH=$PATH:$1
  fi
}

pathPrepend() {
  # Only adds to the path if it's not already there
  if ! echo $PATH | grep -E -q "(^|:)$1($|:)" ; then
    PATH=$1:$PATH
  fi
}

# Add Homebrew location to path (different from Intel based location)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Remove duplicate entries from PATH:
PATH=$(echo "$PATH" | awk -v RS=':' -v ORS=":" '!a[$1]++{if (NR > 1) printf ORS; printf $a[$1]}')

# Add M1 specific Homebrew location
eval "$(/opt/homebrew/bin/brew shellenv)"

pathPrepend "/opt/homebrew/opt/python@3.11/libexec/bin"
pathAppend "$HOME/.yadr/bin"
pathAppend "$HOME/.yadr/bin/yadr"
pathAppend "$HOME/.rbenv/bin"
