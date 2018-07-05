function pip-update() {

  if is_osx; then
    #Update pip
    echo "Updating pip2 & pip2 packages"
    pip2 install --upgrade pip
    pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
    echo ""
    echo "Updating pip3 & pip3 packages"
    pip install --upgrade pip
    pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U
    echo ""
  fi
}
