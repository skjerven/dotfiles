# Function to update the following:
#
# Homebrew (including casks)
# pip packages
# ruby gems (system and installed versions)
# prezto subtree


funciton sys_update() {
  # Homebrew
  echo "Updating Homebrew packages"
  brewu
  echo ""

  # Homebrew casks
  echo "Updating Homebrew casks"
  brew cu -y
  echo ""

  # Update pip
  echo "Updating pip & pip packages"
  pip install --upgrade pip
  pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
  echo ""

  #Update gems
  echo "Updating ruby gems"
  rvm use system
  gem update --system
  rvm use default
  gem udpate
  echo ""

  echo "Updating prezto subtree"
  # Update prezto subtree
  pwd=$PWD
  cd $yadr
  git fetch prezto master
  git subtree pull -P zsh/prezto --squash prezto master
  cd $pwd
}
