function pip-update() {

  if is_osx; then
    echo ""
    echo "Updating pip packages"
    pip_upgrade_outdated --pip_cmd pip --exclude pip
    echo ""
  fi
}
