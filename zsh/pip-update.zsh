function pip-update() {

  if is_osx; then
    #Update pip
    echo "Updating pip & pip packages"
    pip install --upgrade pip
    pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
    echo ""
    echo "Updating pip3 & pip3 packages"
    pip3 install --upgrade pip
    pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
    echo ""
  fi
}
