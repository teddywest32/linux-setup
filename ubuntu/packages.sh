#!/bin/bash

read -p " <- Do you want to update the Repositories? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo sudo apt-get update
fi

echo " ->Installing GNU Stow"
echo
sudo apt-get install stow



echo " -> Installing Firefox Nightly"
echo
sudo apt-get install firefox-trunk



echo " -> Installing Sublime Text 3"
echo
sudo apt-get install sublime-text-installer