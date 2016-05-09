#!/bin/bash

read -p " <- Do you want to install the Firefox Nightly repository? [Y|n] " -r
echo

if [[ $REPLY =~ ^[Yy]$ ]] ; then
    sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
fi