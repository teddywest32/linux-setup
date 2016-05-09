#!/bin/bash

echo "--------------"
echo "INSTALL SCRIPT"
echo "--------------"

echo ""

if [[ -z $1 ]] || [[ $1 = "help" ]] ; then
    echo "Usage :"
    echo "  help             Show the help"
    echo "  ubuntu-repos     Install Ubuntu Repositories"
    echo "  ubuntu-packages  Install Ubuntu packages"
fi

if [[ $1 = "ubuntu-repos" ]] ; then

    source ubuntu/repositories.sh

fi

if [[ $1 = "ubuntu-packages" ]] ; then

    source ubuntu/packages.sh

fi
