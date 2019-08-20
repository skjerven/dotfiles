function prezto-update() {
  echo "Updating prezto subtree"
  # Update prezto subtree
  cd $yadr
  git fetch prezto master
  git subtree pull -P zsh/prezto --squash prezto master
  #cd - > /dev/null
  echo ""
}
