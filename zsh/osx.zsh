# OSX-only stuff
is_osx || return 1

# Some fuckheads decided to change coreutils, so now we have to do this
# in order to get rid of quotes in ls
export QUOTING_STYLE=literal