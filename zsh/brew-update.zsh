function brew-update() {

if is_osx; then
  #Homebrew
  echo "Updating Homebrew packages"
  brew update
  brew upgrade -y
  brew cleanup
  brew doctor

  #Homebrew casks
  echo "Updating Homebrew casks"
  brew upgrade --cask -y
  echo ""
fi
}
