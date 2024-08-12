function pip-update() {

  if is_osx; then
    echo "Updating pip packages"
    pip_upgrade_outdated --pip_cmd pip --exclude pip
    echo ""
  fi
}
