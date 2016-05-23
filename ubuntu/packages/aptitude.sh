#!/bin/bash

ask_question " <- Do you want to update the Repositories? [y|n] "

if said_yes ; then
    sudo sudo apt-get update
fi


headline " -> Installing Aptitude Packages"

packagelist=(

# TOOLS
# ------------------------

stow
curl
ctags
htop
qtpass
bash-builtins
bash-completion


# PACKAGE MANAGERS
# ------------------------

composer


# BROWSERS
# ------------------------

firefox-trunk


# EDITORS
# ------------------------

vim
vim-gtk
atom
sublime-text-installer


# LAMP
# ------------------------

apache2

mysql-server
mysql-client

php-gettext

php7.0-mysql
php7.0-curl
php7.0-json
php7.0-mbstring
php7.0-mcrypt
php7.0-sqlite3
php7.0-cgi
php7.0
libapache2-mod-php7.0

php5.6-mysql
php5.6-curl
php5.6-json
php5.6-mbstring
php5.6-mcrypt
php5.6-sqlite3
php5.6-cgi
php5.6
libapache2-mod-php5.6

phpmyadmin

)
sudo apt-get install ${packagelist[@]}


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
