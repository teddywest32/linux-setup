#!/bin/bash

read -p " <- Do you want to install the Firefox Nightly repository? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
fi

read -p " <- Do you want to install the Atom Editor repository? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo add-apt-repository ppa:webupd8team/atom
fi

read -p " <- Do you want to install the Sublime Text 3 repository? [y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
fi