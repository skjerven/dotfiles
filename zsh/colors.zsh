export GREP_COLOR='1;33'

# Set ls colors
# Prezto does this, but it doesn't seem to be working
test -e ~/.dircolors && \
  eval `dircolors $HOME/.dircolors`
