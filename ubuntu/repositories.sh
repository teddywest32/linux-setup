#!/bin/bash

ask_question " <- Do you want to install the Kubuntu Backports repository? [y|n] "
echo

if said_yes ; then
    sudo add-apt-repository ppa:kubuntu-ppa/backports
fi

ask_question " <- Do you want to install the PHP repository? [y|n] "
echo

if said_yes ; then
    sudo add-apt-repository ppa:ondrej/php
fi

ask_question " <- Do you want to install the Firefox Nightly repository? [y|n] "
echo

if said_yes ; then
    sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
fi

ask_question " <- Do you want to install the Atom Editor repository? [y|n] "
echo

if said_yes ; then
    sudo add-apt-repository ppa:webupd8team/atom
fi

ask_question " <- Do you want to install the Sublime Text 3 repository? [y|n] "
echo

if said_yes ; then
    sudo add-apt-repository ppa:webupd8team/sublime-text-3
fi

ask_question " <- Do you want to install the Neofetch repository? [y|n] "
echo

if said_yes ; then
    sudo add-apt-repository ppa:dawidd0811/neofetch
fi
