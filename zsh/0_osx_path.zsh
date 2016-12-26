# Set paths to homebrew coreutils, findutils, etc.
# OSX specific

is_osx || return 1

path=(
  /usr/local/opt/coreutils/libexec/gnubin
  /usr/local/opt/findutils/libexec/gnubin
  /usr/local/opt/gnu-sed/libexec/gnubin
  /usr/local/opt/gnu-tar/libexec/gnubin
  $path
)

manpath=(
  /usr/local/opt/coreutils/libexec/gnuman
  /usr/local/opt/findutils/libexec/gnuman
  /usr/local/opt/gnu-sed/libexec/gnuman
  /usr/local/opt/gnu-tar/libexec/gnuman
  $manpath
)
