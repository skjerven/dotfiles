function brew-update() {

if is_osx; then
  #Homebrew
  echo "Updating Homebrew packages"
  brewu
  echo ""

  #Homebrew casks
  echo "Updating Homebrew casks"
  brew cu -y
  echo ""
fi
}
