function ruby-update() {

  #Update gems
  echo "Updating ruby gems"

  if is_osx; then
    rvm use system
    gem update --system
  fi
  rvm use default
  gem update
  echo ""
}
