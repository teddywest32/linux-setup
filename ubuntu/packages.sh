#!/bin/bash

read -p " <- Do you want to update the Repositories? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo sudo apt-get update
fi

echo " -> Installing Packages"
echo
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
php7.0-cgi
php7.0
libapache2-mod-php7.0

phpmyadmin

)
sudo apt-get install ${packagelist[@]}
echo



if [[ -f ~/dropbox-dist/dropboxd ]] ; then
	echo " -> Installing Dropbox"
	echo
	cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
	echo
fi