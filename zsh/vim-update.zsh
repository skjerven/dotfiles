function _update() {
  echo "Updating $1"
  cd $1
  git pull
}

function vim-update() {
  echo "Updating VIM plugins"
  cd $HOME/.vim/bundle
  zargs -n 1 -P 10 -- * -- _update
  echo ""
}
