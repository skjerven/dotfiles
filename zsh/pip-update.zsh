function pip-update() {

  if is_osx; then
    #Update pip
    echo ""
    echo "Updating pip & pip packages"
    #pip install --upgrade pip
    pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install --no-cache-dir -U
    pip_upgrade_outdated --pip_cmd pip
    echo ""
  fi
}
