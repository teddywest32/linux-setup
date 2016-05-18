#!/bin/bash

read -p " <- Do you want to update the Repositories? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo sudo apt-get update
fi



echo " ->Installing GNU Stow"
echo
sudo apt-get install stow
echo



echo " -> Installing Curl"
echo
sudo apt-get install curl
echo



echo " -> Installing HTOP"
echo
sudo apt-get install htop
echo



echo " -> Installing CTAGS"
echo
sudo apt-get install ctags
echo



echo " -> Installing QtPass"
echo
sudo apt-get install qtpass
echo



echo " -> Installing Firefox Nightly"
echo
sudo apt-get install firefox-trunk
echo



echo " -> Installing Sublime Text 3"
echo
sudo apt-get install sublime-text-installer
echo



echo " -> Installing VIM"
echo
sudo apt-get install vim
echo



echo " -> Installing VIM-GTK"
echo
sudo apt-get install vim-gtk
echo



if [[ -f ~/dropbox-dist/dropboxd ]] ; then
	echo " -> Installing Dropbox"
	echo
	cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
	echo
fi



echo " -> Installing Apache"
echo
sudo apt-get install apache2
echo



echo " -> Installing MySQL"
echo
sudo apt-get install mysql-server mysql-client
echo



echo " -> Installing PHP"
echo
packagelist=(
php-gettext
php7.0-mysql
php7.0-curl
php7.0-json
php7.0-mbstring 
php7.0-cgi
php7.0
libapache2-mod-php7.0
)
sudo apt-get install ${packagelist[@]}
echo



echo " -> Installing PHPMYADMIN"
echo
sudo apt-get install phpmyadmin
echo