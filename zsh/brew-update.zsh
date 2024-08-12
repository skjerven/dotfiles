function brew-update() {

if is_osx; then
  #Homebrew
  echo "Updating Homebrew packages"
  brew update
  brew upgrade
  brew cleanup
  brew doctor

  #Homebrew casks
  echo "Updating Homebrew casks"
  brew upgrade --cask
  echo ""
fi
}
