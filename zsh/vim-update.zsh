function vim-update() {
  echo "Updating VIM plugins"
  vi +PluginUpdate +qa
  echo ""
}
