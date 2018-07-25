function brew-update() {

if is_osx; then
  #Homebrew
  echo "Updating Homebrew packages"
  brew update
  brew upgrade
  brew cleanup
  brew prune
  brew doctor
  echo ""

  #Homebrew casks
  echo "Updating Homebrew casks"
  brew cu -a --cleanup
  echo ""
fi
}
