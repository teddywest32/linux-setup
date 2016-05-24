#!/bin/bash

headline " -> Mapping PHP5.6 to PHP"

sudo ln -sf /usr/bin/php5.6 /etc/alternatives/php


FILENAME="$HOME/.dropbox-dist/dropboxd"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Dropbox"
    cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
    echo
fi


headline " -> Setting up Sublime Text 3 packages"

DIRECTORY="$HOME/.config/sublime-text-3/Installed Packages"
FILENAME="$DIRECTORY/Package Control.sublime-package"
if [[ ! -f "$FILENAME" ]] ; then
    cd "$DIRECTORY"
    wget "http://sublime.wbond.net/Package%20Control.sublime-package" -O "$FILENAME"
fi

DIRECTORY="$HOME/.config/sublime-text-3/Packages/User/"
ln -sf "$HOME/Code/Personal/linux-setup/data/sublime-text-3/Package Control.sublime-settings" "$DIRECTORY/Package Control.sublime-settings"
ln -sf "$HOME/Code/Personal/linux-setup/data/sublime-text-3/Preferences.sublime-settings" "$DIRECTORY/Preferences.sublime-settings"


headline " -> Setting up Konsole Themes"

FILENAME="$HOME/.local/share/konsole/SpareGray.colorscheme"
ln -sf "$HOME/Code/Personal/linux-setup/data/konsole/SpaceGray.colorscheme" "$FILENAME"


FILENAME="/usr/bin/skype"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Skype"
    cd ~ && wget "http://www.skype.com/go/getskype-linux-beta-ubuntu-64" -O "skype.deb"
    sudo dpkg -i skype.deb
    sudo apt-get -f install
    rm skype.deb
    echo
fi


FILENAME="$HOME/.bash_it"
if [[ ! -f "$FILENAME" ]] ; then
    headline " -> Installing Bash-It"
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    sh ~/.bash_it/install.sh
    source ~/.bashrc
    echo
fi
