# OSX-only stuff
is_osx || return 1

# Some fuckheads decided to change coreutils, so now we have to do this
# in order to get rid of quotes in ls
export QUOTING_STYLE=literal

# Add prompt tracking to Timing App
PROMPT_TITLE='echo -ne "\033]0;${USER}@${HOSTNAME%%.*}:${PWD/#$HOME/~}\007"'
export PROMPT_COMMAND="${PROMPT_TITLE}; ${PROMPT_COMMAND}"
