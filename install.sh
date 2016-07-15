#!/bin/bash

source _utilities.sh

echo

if [[ -z $1 ]] || [[ $1 = "help" ]] ; then
    echo "Usage:"
    echo "  help                    Show the help"
    echo "  ubuntu-directories      Set up the Directories"
    echo "  ubuntu-repositories     Install Ubuntu Repositories"
    echo "  ubuntu-packages         Install Packages (Aptitude/Bower/Node)"
    echo "  ubuntu-aptitude         Install Aptitude Packages"
    echo "  ubuntu-composer         Install Composer Packages"
    echo "  ubuntu-bower            Install Bower Packages"
    echo "  ubuntu-node             Install Node Packages"
    echo "  ubuntu-other            Install Other Packages (Source/Copy)"
fi

if [[ $1 = "ubuntu-directories" ]] ; then
    source ubuntu/directories.sh
fi

if [[ $1 = "ubuntu-repositories" ]] ; then
    source ubuntu/repositories.sh
fi

if [[ $1 = "ubuntu-packages" ]] ; then
    source ubuntu/packages/aptitude.sh
    source ubuntu/packages/composer.sh
    source ubuntu/packages/bower.sh
    source ubuntu/packages/node.sh
    source ubuntu/packages/other.sh
fi

if [[ $1 = "ubuntu-aptitude" ]] ; then
    source ubuntu/packages/aptitude.sh
fi

if [[ $1 = "ubuntu-composer" ]] ; then
    source ubuntu/packages/composer.sh
fi

if [[ $1 = "ubuntu-bower" ]] ; then
    source ubuntu/packages/bower.sh
fi

if [[ $1 = "ubuntu-node" ]] ; then
    source ubuntu/packages/node.sh
fi

if [[ $1 = "ubuntu-other" ]] ; then
    source ubuntu/packages/other.sh
fi

echo
