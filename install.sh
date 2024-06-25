#!/bin/sh

if [ ! -d "$HOME/.yadr" ]; then
    echo ""
    echo "======================================================"
    echo "Installing YADR for the first time"
    echo "======================================================"
    git clone --depth=1 https://github.com/skjerven/dotfiles.git "$HOME/.yadr"
    echo ""
    cd "$HOME/.yadr"
    [ "$1" = "ask" ] && export ASK="true"
    rake install
    ln -s "$HOME/Repositories/dotfiles" "$HOME/.yadr"
else
    echo "YADR is already installed"
fi
