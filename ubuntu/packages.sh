#!/bin/bash

read -p " <- Do you want to update the Repositories? [Y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo sudo apt-get update
fi

echo " -> Installing Firefox Nightly"
echo

sudo apt-get install firefox-trunk