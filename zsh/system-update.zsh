# Function to update the following:
#
# Homebrew (including casks)
# pip packages
# ruby gems (system and installed versions)
# prezto subtree
# VIM plugins

function system-update() {
  brew-update
  #pip-update
  ruby-update
  vim-update
  prezto-update
}
