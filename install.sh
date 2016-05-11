#!/bin/bash

echo "--------------"
echo "INSTALL SCRIPT"
echo "--------------"

echo ""

if [[ -z $1 ]] || [[ $1 = "help" ]] ; then
    echo "Usage :"
    echo "  help                   Show the help"
    echo "  ubuntu-repositories    Install Ubuntu Repositories"
    echo "  ubuntu-packages        Install Ubuntu packages"
    echo "  ubuntu-directories     Set up the Directories"
fi

if [[ $1 = "ubuntu-repositories" ]] ; then

    source ubuntu/repositories.sh

fi

if [[ $1 = "ubuntu-packages" ]] ; then

    source ubuntu/packages.sh

fi

if [[ $1 = "ubuntu-directories" ]] ; then

    source ubuntu/directories.sh

fi
