#!/bin/bash

question " <- Do you want to install the PHP repository? [y|n] "
echo

if if_yes ; then
    sudo add-apt-repository ppa:ondrej/php
fi

question " <- Do you want to install the Firefox Nightly repository? [y|n] "
echo

if if_yes ; then
    sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
fi

question " <- Do you want to install the Atom Editor repository? [y|n] "
echo

if if_yes ; then
    sudo add-apt-repository ppa:webupd8team/atom
fi

question " <- Do you want to install the Sublime Text 3 repository? [y|n] "
echo

if if_yes ; then
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
fi