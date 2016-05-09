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



echo " -> Installing Firefox Nightly"
echo
sudo apt-get install firefox-trunk
echo



echo " -> Installing Sublime Text 3"
echo
sudo apt-get install sublime-text-installer
echo



echo " -> Installing Dropbox"
echo
if [ -f ~/dropbox-dist/dropboxd ] ; then
	cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
fi
echo