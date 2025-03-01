#!/usr/bin/env sh

# First, install Babashka
curl -sLO https://raw.githubusercontent.com/babashka/babashka/master/install
chmod +x install
./install --dir ~/.local/bin
rm -f install

echo "Dabashka installation completed."

# Then let Babashka take care of the rest
~/.local/bin/bb -f ~/.dotfiles/setup/bb.edn setup
