function ruby-update() {

  #Update gems
  echo "Updating ruby gems"

  gem update --system
  gem update
  echo ""
}
